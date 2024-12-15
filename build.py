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
import zipfile

log = logging.getLogger(__name__)
# TODO: Set custom logging format for INFO level
logging.basicConfig(level=logging.ERROR)

DEFAULTS = {
    'SERVERPROPS': 'server.properties.in'
}



def zip_folder(indir, outdir, filename, *, compression_ratio=9):
    """Archives `indir` into `outdir`/`filename` ZIP.
    Uses provided `compression_ratio`
    """
    assert 0 <= compression_ratio <= 9, 'Compression ratio out of bounds'
    
    indir, outdir = map(pth.Path, [indir, outdir])
    assert indir.is_dir(), 'Input directory does not exist'
    outdir.mkdir(exist_ok=True)     # ensure output directory exists

    outfile = outdir.joinpath(filename)
    log.debug(f'Constructed output path: "{outfile}"')

    # Windows natively supports only DEFLATE. Also use STORED for uncompressed ZIPs
    algo = zipfile.ZIP_STORED if not compression_ratio else zipfile.ZIP_DEFLATED
    
    with zipfile.ZipFile(outfile, mode='w', compression=algo,
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
    h = hashlib.file_digest(file, algo.lower())
    return h.hexdigest()

def build_config(tpl_file, out_file=None):
    tpl_file = pth.Path(tpl_file)

    # when out_file not provided, generate its name by stripping latest extension
    if out_file is None:
        out_file = tpl_file.stem
        log.debug(f'Config out_file: "{out_file}"')

    out_file = pth.Path(out_file)

    cfg = read_config(tpl_file)


__CFG_FAKE_SECTION = '[__FAKE_SECTION__]'

def read_config(file):
    # fake section name
    data = f'{__CFG_FAKE_SECTION}\n'
    with open(file) as f:
        data += f.read()
    
    cfg = configparser.ConfigParser(
        comment_prefixes=['#'], delimiters=['='])
    cfg.read_string(data)
    return cfg

def write_config(cfg, file, *, with_spaces=False):
    buf = io.StringIO()
    cfg.write(buf, space_around_delimiters=with_spaces)
    buf.seek(0)     # rewind buffer to initial

    lines = buf.readlines()
    # strip fake section
    lines = [line for line in lines if not line == f'{__CFG_FAKE_SECTION}\n']
    
    with open(file, 'w') as fout:
        data = ''.join(lines)
        return fout.write(data)


if __name__ == '__main__':
    log.setLevel(logging.DEBUG)
    cfg = read_config(DEFAULTS['SERVERPROPS'])
    write_config(cfg, 'server.properties')
    #zip_folder('resources', 'build', 'resources.zip')
