#!/usr/bin/env python3
"""Builds server-side and client-side, including assets."""

import configparser
import hashlib
import http.client
import io
import logging
import pathlib as pth
import secrets
import ssl
import sys
import types
import urllib.parse
import uuid

from tools.common import zip_folder

log = logging.getLogger(__name__)
logging.basicConfig(level=logging.INFO, format='%(message)s')

DEFAULTS = types.SimpleNamespace(
    serverprops='server.properties.in',
    serverprops_out='server.properties',
    respack_dir='resources',
    build_dir='build',
    zip_name='tag-respack.zip',
    compression_ratio=9,
    catbox_url='https://catbox.moe/user/api.php',
    upload_chunk_size=1024 * 1024,
)


def file_hash(file, *, algo='sha1'):
    needclose = False
    if not isinstance(file, io.BytesIO):
        file = open(file, 'rb')
        needclose = True
    h = hashlib.file_digest(file, algo.lower())
    if needclose:
        file.close()
    return h.hexdigest()


def properties_escape(string):
    replacements = {
        '\\': '\\\\',
        '=': '\\=',
        ':': '\\:',
        '\n': '\\u000A',
    }

    for orig, new in replacements.items():
        string = string.replace(orig, new)
    return string


def print_progress(label, sent, total):
    width = 30
    ratio = 1.0 if total == 0 else min(max(sent / total, 0.0), 1.0)
    filled = int(width * ratio)
    bar = '#' * filled + '-' * (width - filled)
    percent = ratio * 100
    print(f'\r{label}: [{bar}] {percent:6.2f}% ({sent}/{total} bytes)',
          end='',
          file=sys.stderr,
          flush=True)
    if sent >= total:
        print(file=sys.stderr, flush=True)


def upload_to_catbox(file, *, userhash=None, endpoint=DEFAULTS.catbox_url):
    file = pth.Path(file)
    parsed = urllib.parse.urlparse(endpoint)
    if parsed.scheme != 'https':
        raise RuntimeError(f'Unsupported Catbox endpoint scheme: {parsed.scheme}')

    boundary = f'----CodexCatboxBoundary{secrets.token_hex(16)}'

    def field_part(name, value):
        return (
            f'--{boundary}\r\n'
            f'Content-Disposition: form-data; name="{name}"\r\n\r\n'
            f'{value}\r\n'
        ).encode('utf-8')

    prefix = io.BytesIO()
    prefix.write(field_part('reqtype', 'fileupload'))
    if userhash:
        prefix.write(field_part('userhash', userhash))
    prefix.write(
        (
            f'--{boundary}\r\n'
            f'Content-Disposition: form-data; name="fileToUpload"; '
            f'filename="{file.name}"\r\n'
            'Content-Type: application/zip\r\n\r\n'
        ).encode('utf-8'))
    prefix = prefix.getvalue()
    suffix = f'\r\n--{boundary}--\r\n'.encode('utf-8')

    file_size = file.stat().st_size
    total_size = len(prefix) + file_size + len(suffix)
    sent = 0

    conn = http.client.HTTPSConnection(parsed.netloc, context=ssl.create_default_context())
    try:
        conn.putrequest('POST', parsed.path or '/')
        conn.putheader('Content-Type', f'multipart/form-data; boundary={boundary}')
        conn.putheader('Content-Length', str(total_size))
        conn.putheader('User-Agent', 'lostyas-tag-build/0.1')
        conn.endheaders()

        conn.send(prefix)
        sent += len(prefix)
        print_progress('Uploading', sent, total_size)

        with open(file, 'rb') as fin:
            while chunk := fin.read(DEFAULTS.upload_chunk_size):
                conn.send(chunk)
                sent += len(chunk)
                print_progress('Uploading', sent, total_size)

        conn.send(suffix)
        sent += len(suffix)
        print_progress('Uploading', sent, total_size)

        response = conn.getresponse()
        payload = response.read().decode('utf-8', errors='replace').strip()
    finally:
        conn.close()

    if response.status >= 400:
        raise RuntimeError(f'Catbox upload failed with HTTP {response.status}: {payload}')

    result = urllib.parse.urlparse(payload)
    if result.scheme not in {'http', 'https'} or not result.netloc:
        raise RuntimeError(f'Catbox returned unexpected response: {payload!r}')

    return payload


__CFG_FAKE_SECTION = '__FAKE_SECTION__'


def read_config(file):
    data = f'[{__CFG_FAKE_SECTION}]\n'
    with open(file, encoding='utf-8') as f:
        data += f.read()

    cfg = configparser.ConfigParser(comment_prefixes=['#', '!'],
                                    delimiters=['=', ':'])
    cfg.read_string(data)
    return cfg


def write_config(cfg, file, *, with_spaces=False):
    buf = io.StringIO()
    cfg.write(buf, space_around_delimiters=with_spaces)
    buf.seek(0)

    lines = buf.readlines()
    lines = [line for line in lines if line != f'[{__CFG_FAKE_SECTION}]\n']

    with open(file, 'w', encoding='utf-8') as fout:
        data = ''.join(lines)
        return fout.write(data)


def build_config(tpl_file, out_file=None, entries=None):
    entries = dict() if entries is None else entries

    tpl_file = pth.Path(tpl_file)
    if out_file is None:
        out_file = tpl_file.stem

    out_file = pth.Path(out_file)
    cfg = read_config(tpl_file)

    section = cfg[__CFG_FAKE_SECTION]
    for k, v in entries.items():
        section[k] = properties_escape(v) if isinstance(v, str) else v

    write_config(cfg, out_file)


def build_respack_config(
        respack_zip,
        respack_url,
        respack_prompt=None,
        respack_uuid=None,
        *,
        tpl_file=DEFAULTS.serverprops,
        out_file=DEFAULTS.serverprops_out):
    sha = file_hash(respack_zip)

    if respack_uuid is None:
        seed = f'sha1.{sha}'
        respack_uuid = str(uuid.uuid5(uuid.NAMESPACE_OID, seed))

    entries = {
        'resource-pack': respack_url,
        'resource-pack-id': respack_uuid,
        'resource-pack-sha1': sha,
    }
    if respack_prompt is not None:
        entries['resource-pack-prompt'] = respack_prompt

    build_config(tpl_file=tpl_file, out_file=out_file, entries=entries)


def build_respack():
    build_dir = pth.Path(DEFAULTS.build_dir)
    build_dir.mkdir(exist_ok=True)

    zip_fpath = build_dir / DEFAULTS.zip_name

    log.info(f'Archiving {DEFAULTS.respack_dir}/ -> {zip_fpath}')
    zip_folder(DEFAULTS.respack_dir, zip_fpath,
               compression_ratio=DEFAULTS.compression_ratio)

    log.info('Uploading ZIP to Catbox')
    respack_url = upload_to_catbox(zip_fpath)
    log.info(f'Catbox URL: {respack_url}')

    log.info(f'Writing {DEFAULTS.serverprops_out}')
    build_respack_config(zip_fpath, respack_url)

    return {
        'zip_path': zip_fpath,
        'resource_pack_url': respack_url,
        'server_properties_path': pth.Path(DEFAULTS.serverprops_out),
    }


if __name__ == '__main__':
    build_respack()
