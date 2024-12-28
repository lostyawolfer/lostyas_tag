#!/usr/bin/env python3
"""Builds server-side and client-side, including assets."""

# TODO:
# - add comments into cfg file
# - cfg file template processing

import configparser
import hashlib
import io
import logging
import pathlib as pth
import sys
import types
import uuid
import zipfile

log = logging.getLogger(__name__)
# TODO: Set custom logging format for INFO level
logging.basicConfig(level=logging.ERROR)

DEFAULTS = types.SimpleNamespace(
    serverprops='server.properties.in',
    respack_dir='resources',
    respack_zip='build/respack.zip',
)


class BuildError(Exception):
    pass


def zip_folder(indir, outfile, *, compression_ratio=9):
    """Archives `indir` into `outdir`/`filename` ZIP.
    Uses provided `compression_ratio`
    """
    assert 0 <= compression_ratio <= 9, 'Compression ratio out of bounds'

    indir, outfile = map(pth.Path, [indir, outfile])
    assert indir.is_dir(), 'Input directory does not exist'
    outdir = outfile.parent
    outdir.mkdir(exist_ok=True)  # ensure output directory exists

    # check that outfile is not placed under indir
    # Catch ValueError (meaning our ZIP is not to be placed in subpath of indir)
    # When no ValueError is raised, it means we have a recursion -> mark FAILURE
    try:
        outfile.relative_to(indir)
    except ValueError:
        pass  # ignore raised exception
    else:  # there was no exception
        msg = f'Cannot put "{outfile}" into directory "{indir}"'
        msg += ' being archived'
        raise BuildError(msg)

    log.debug(f'Constructed output path: "{outfile}"')

    # Windows natively supports only DEFLATE. Also use STORED for uncompressed ZIPs
    algo = zipfile.ZIP_STORED if not compression_ratio else zipfile.ZIP_DEFLATED

    with zipfile.ZipFile(outfile, mode='w',
                         compression=algo,
                         compresslevel=compression_ratio) as zip:
        # Walk input directory, putting files in archive
        for dirpath, dirnames, filenames in indir.walk():
            basepth = pth.Path(dirpath).relative_to(indir)
            log.debug(f'Inside dir {basepth}')

            subdirs = [basepth.joinpath(i) for i in dirnames]
            # log.debug(f'Subdirs: {subdirs}')

            # create directories in ZIP archive
            for subdir in subdirs:
                zip.mkdir(str(subdir))

            # put files into archive
            for fname in filenames:
                infile = pth.Path(dirpath).joinpath(fname)
                arcname = infile.relative_to(indir)
                log.debug(f'\t\tFile "{arcname}"')
                zip.write(infile, str(arcname))

        assert zip.testzip() is None, 'ZIP integrity failure'

        return zip.infolist()


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
    replacements = {        # rely on dict insertion order
        '\\': '\\\\',       # first escape \ with \\
        '=': '\\=',
        ':': '\\:',
        '\n': '\\u000A',
    }

    for orig, new in replacements.items():
        string = string.replace(orig, new)
    return string


__CFG_FAKE_SECTION = '__FAKE_SECTION__'


def read_config(file):
    # fake section name
    data = f'[{__CFG_FAKE_SECTION}]\n'
    with open(file) as f:
        data += f.read()

    cfg = configparser.ConfigParser(comment_prefixes=['#', '!'],
                                    delimiters=['=', ':'])
    cfg.read_string(data)
    return cfg


def write_config(cfg, file, *, with_spaces=False):
    buf = io.StringIO()
    cfg.write(buf, space_around_delimiters=with_spaces)
    buf.seek(0)  # rewind buffer to initial

    lines = buf.readlines()
    # strip fake section
    lines = [line for line in lines if not line == f'[{__CFG_FAKE_SECTION}]\n']

    with open(file, 'w') as fout:
        data = ''.join(lines)
        return fout.write(data)


def build_config(tpl_file, out_file=None, entries=None):
    entries = dict() if entries is None else entries

    tpl_file = pth.Path(tpl_file)

    # when out_file not provided, generate its name by stripping latest extension
    if out_file is None:
        out_file = tpl_file.stem
        log.debug(f'Config out_file: "{out_file}"')

    out_file = pth.Path(out_file)

    cfg = read_config(tpl_file)

    section = cfg[__CFG_FAKE_SECTION]
    # patch entries
    for k, v in entries.items():
        section[k] = properties_escape(v) if isinstance(v, str) else v

    write_config(cfg, out_file)


def build_respack_config(
        respack_zip,  # our archive
        respack_url,  # url to be formatted
        respack_prompt=None,  # message
        respack_uuid=None,
        *,
        tpl_file=DEFAULTS.serverprops):

    # first get sha1 hashsum for archive
    sha = file_hash(respack_zip)

    if respack_uuid is None:  # generate ourselves
        # use sha1 hashsum as uuid seed
        seed = f'sha1.{sha}'
        respack_uuid = uuid.uuid5(uuid.NAMESPACE_OID, seed)
        respack_uuid = str(respack_uuid)  # need to be hyphenated-uuid-format

    entries = {
        'resource-pack': respack_url,
        'resource-pack-id': respack_uuid,
        'resource-pack-sha1': sha,
    }
    if respack_prompt is not None:
        entries['resource-pack-prompt'] = respack_prompt

    # write it into config using template
    build_config(tpl_file=tpl_file, out_file=None, entries=entries)


def build_respack(respack_url,
                  respack_dir=DEFAULTS.respack_dir,
                  zip_fpath=DEFAULTS.respack_zip,
                  respack_prompt=None,
                  tpl_file=DEFAULTS.serverprops):
    """
    Compress respack_dir into zip_fpath.
    Then build server.properties for it,
    assuming respack will be hosted at respack_url.
    Optional respack_prompt is exactly as used in server.properties directly.
    """
    zip_fpath = pth.Path(zip_fpath)
    # Compress with 0 ratio for faster decompression on clients
    zip_folder(respack_dir, zip_fpath, compression_ratio=0)

    build_respack_config(zip_fpath,
                         respack_url=respack_url,
                         respack_prompt=respack_prompt,
                         tpl_file=tpl_file)


def parse_args(argv=sys.argv):
    ...


if __name__ == '__main__':
    log.setLevel(logging.DEBUG)
    build_respack(respack_url='https://tofill.later/?my=respack.zip', )
