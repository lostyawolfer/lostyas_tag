#!/usr/bin/env python3

import hashlib
import logging
import pathlib as pth
import shutil
import tomllib as toml
from urllib import request

DEFAULTS = {
    'spec': 'versions.toml',
}

log = logging.getLogger(__name__)
logging.basicConfig(level=logging.INFO)

class DLError(Exception):
    pass


def human_size(size):
    for x in 'bytes', 'KiB', 'MiB', 'GiB', 'TiB':
        if size < 1024.0:
            break
        size /= 1024
    return (f'{size:.1f}' if x != 'bytes' else f'{size}') + f' {x}'


def load_spec(filename):
    with open(filename, 'rb') as file:
        return toml.load(file)

def download(parsed_spec, entry_name, outdir):
    """
    reads parsed spec (as returned by `load_spec`),
    reads url of the entry name (given as [myentry] in TOML),
    and downloads file from this url to outdir
    """
    # ensure outdir is convertable to Path
    outdir = pth.Path(outdir)
    if not outdir.exists():
        log.info(f'Creating output directory "{outdir}"')
        outdir.mkdir()
    else:
        assert outdir.is_dir()

    entry = parsed_spec[entry_name]
    url = entry['url']
    log.debug(f'Parsed url for "{entry_name}":' +
              f' "{url}"')
    
    reqobj = request.Request(url, headers={
        # imitate CURL
        'User-Agent': 'curl/8.11.0'
    })
    req = request.urlopen(reqobj)               # open url as file-like

    # Construct file name
    fmt = entry.get('name_format')
    log.debug(f'Fmt is "{fmt}"')
    if fmt:             # Try from format
        filename = fmt.format(**entry)
        log.debug(f'Constructed filename "{filename}"')
    else:               # Or use from server
        filename = req.headers.get_filename()    # get filename as provided by server
        # sanitize filename to avoid injections
        filename = pth.Path(filename).name
        log.debug(f'Got filename from server "{filename}"')

    # construct file path from two parts
    outname = outdir.joinpath(filename)
    log.debug(f'Constructed out filename "{outname}"')
    
    # finally download it
    with open(outname, 'wb') as outfile:
        # same as
        # outfile.write(req.read())
        shutil.copyfileobj(req, outfile)
        size = outfile.tell()       # returns bytes written
        log.info(f'Downloaded {outname} ({human_size(size)})')
    
    hash = entry.get('hash')        # will resort to None if not provided
    if hash and not verify_hash(hash, open(outname, 'rb')):
        raise DLError(f'Hash check failure. Expected {hash}')

    return size


def verify_hash(hashdescr, fileobj):
    algo, hash_in = hashdescr.split(':', 1)
    algo = algo.lower()
    h = hashlib.file_digest(fileobj, algo)
    digest = h.hexdigest()
    log.debug(f'Computed hash: {digest}')

    return digest == hash_in


    
    

if __name__ == '__main__':
    log.setLevel(logging.DEBUG)
    spec = load_spec(DEFAULTS['spec'])
    log.debug(spec)

    download(spec, 'servercore_papermc', './')
    download(spec, 'doors_reloaded', './plugins/')
    download(spec, 'gsit', './plugins/')
    download(spec, 'luckperms', './plugins/')
    download(spec, 'multiversecore', './plugins/')
    #download(spec, 'pistonmotd', './plugins/')
    download(spec, 'tablist', './plugins/')
    download(spec, 'viaversion', './plugins/')
    download(spec, 'worldedit', './plugins/')
    #log.debug(f'Downloaded {ret}')
