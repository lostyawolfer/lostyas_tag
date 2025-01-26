"""A library of common utilities used in project"""

import hashlib
import logging
import pathlib as pth
import zipfile

logging.basicConfig()
log = logging.getLogger(__name__ if __name__ != '__main__' else 'MAIN')

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


def hash_dir(dir: str | pth.Path, *,
             hash_algo: str = 'SHA1',
             shorten: bool = False):
    """Constructs a hash for directory structure
    based on change datetimes of its files
    """
    hash_algo = hash_algo.lower()
    dir = pth.Path(dir)

    # traverse directory structure
    res = dict()
    for base, _, files in dir.walk():
        files = [base.joinpath(f) for f in files]

        for file in files:
            mtime = file.stat().st_mtime        # modification time
            # mtime = int(mtime)                  # strip miliseconds
            res[file.as_posix()] = mtime
    

    # build hash
    names = '\n'.join(res.keys()).encode('utf8')
    times = '\n'.join(map(str, res.values())).encode('ascii')

    mkhash = lambda data: hashlib.new(hash_algo, data, usedforsecurity=False)
    
    # result is HASH( HASH(NAMES) + HASH(TIMES) ) where + is concatenation
    nhash = mkhash(names).digest()
    thash = mkhash(times).digest()
    reshash = mkhash(nhash + thash).digest()

    if not shorten:
        return reshash.hex()
    
    one, two = reshash[: len(reshash) // 2], reshash[len(reshash) // 2 : ]
    ione, itwo = map(int.from_bytes, [one, two])
    res = ione ^ itwo
    return res.to_bytes(len(one)).hex()

