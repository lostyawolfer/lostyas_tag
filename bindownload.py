#!/usr/bin/env python3

"""
Downloads assets required for running server from
remote urls, as provided by the spec file.
"""

import argparse
import concurrent.futures
import hashlib
import logging
import pathlib as pth
import threading
import sys
import tomllib as toml
from urllib import request

DEFAULTS = {
    'spec': 'versions.toml',
    'loglevel': 'INFO',
    'rootdir': '.',
    'parallel_downloads': 5,
    'chunk_size': 1024 * 256,
}

log = logging.getLogger(__name__)
# TODO: Set custom logging format for INFO level
logging.basicConfig(level=logging.ERROR)

class DLError(Exception):
    pass


class ProgressTracker:
    def __init__(self, total_files):
        self.total_files = total_files
        self.completed_files = 0
        self.downloaded_bytes = 0
        self.total_bytes = 0
        self.known_size_files = 0
        self.unknown_size_files = 0
        self._lock = threading.Lock()

    def register_file_size(self, size):
        with self._lock:
            if size is None:
                self.unknown_size_files += 1
            else:
                self.total_bytes += size
                self.known_size_files += 1
            self._render_locked()

    def advance(self, chunk_size):
        with self._lock:
            self.downloaded_bytes += chunk_size
            self._render_locked()

    def mark_completed(self):
        with self._lock:
            self.completed_files += 1
            self._render_locked()
            if self.completed_files >= self.total_files:
                print(file=sys.stderr, flush=True)

    def print_message(self, message):
        with self._lock:
            print('\r' + ' ' * 120 + '\r', end='', file=sys.stderr)
            print(message, file=sys.stderr, flush=True)
            self._render_locked()

    def _render_locked(self):
        width = 30
        has_reliable_total = (
            self.unknown_size_files == 0 and
            self.total_bytes > 0 and
            self.downloaded_bytes <= self.total_bytes
        )

        if has_reliable_total:
            ratio = min(self.downloaded_bytes / self.total_bytes, 1.0)
            filled = int(width * ratio)
            bar = '#' * filled + '-' * (width - filled)
            bytes_part = f'{human_size(self.downloaded_bytes)} / {human_size(self.total_bytes)}'
        else:
            ratio = 1.0 if self.total_files == 0 else self.completed_files / self.total_files
            filled = int(width * ratio)
            bar = '#' * filled + '-' * (width - filled)
            bytes_part = f'{human_size(self.downloaded_bytes)} downloaded'
            if self.total_bytes > 0:
                bytes_part += f' | known total {human_size(self.total_bytes)}+'

        files_part = f'files {self.completed_files}/{self.total_files}'
        print(f'\rDownloading [{bar}] {bytes_part} | {files_part}',
              end='',
              file=sys.stderr,
              flush=True)


def human_size(size):
    for x in 'bytes', 'KiB', 'MiB', 'GiB', 'TiB':
        if size < 1024.0:
            break
        size /= 1024
    return (f'{size:.1f}' if x != 'bytes' else f'{size}') + f' {x}'


def load_spec(filename):
    with open(filename, 'rb') as file:
        return toml.load(file)

def spec_targets(parsed_spec):
    """Get target names out of parsed spec."""
    return list(parsed_spec)

def download(parsed_spec, target_name, rootdir, *, progress=None):
    """
    reads parsed spec (as returned by `load_spec`),
    reads url of the target name (given as [mytarget] in TOML),
    and downloads file from this url to outdir
    """
    # ensure outdir is convertable to Path
    outdir = pth.Path(rootdir)    

    target = parsed_spec[target_name]
    url = target['url']
    log.debug(f'Parsed url for "{target_name}":' +
              f' "{url}"')

    subdir = target.get('subdir', '.')
    outdir = outdir.joinpath(subdir)
    outdir.mkdir(exist_ok=True)
    assert outdir.is_dir()
    
    reqobj = request.Request(url, headers={
        # imitate CURL
        'User-Agent': 'curl/8.11.0'
    })
    with request.urlopen(reqobj) as req:               # open url as file-like
        content_length = req.headers.get('Content-Length')
        total_size = int(content_length) if content_length is not None else None
        if progress is not None:
            progress.register_file_size(total_size)

        # Construct file name
        fmt = target.get('name_format')
        log.debug(f'Fmt is "{fmt}"')
        if fmt:             # Try from format
            filename = fmt.format(**target)
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
            while chunk := req.read(DEFAULTS['chunk_size']):
                outfile.write(chunk)
                if progress is not None:
                    progress.advance(len(chunk))
            size = outfile.tell()       # returns bytes written
            log.debug(f'Downloaded {outname} ({human_size(size)})')
    
    hash = target.get('hash')        # will resort to None if not provided
    if hash:
        with open(outname, 'rb') as fileobj:
            if not verify_hash(hash, fileobj):
                raise DLError(f'Hash check failure. Expected {hash}')

    if progress is not None:
        progress.mark_completed()

    return size


def verify_hash(hashdescr, fileobj):
    algo, hash_in = hashdescr.split(':', 1)
    algo = algo.lower()
    h = hashlib.file_digest(fileobj, algo)
    digest = h.hexdigest()
    log.debug(f'Computed hash: {digest}')

    return digest == hash_in


def parse_args(argv=sys.argv):
    """Use argparse to get arguments."""
    # ref: https://docs.python.org/3/library/argparse.html

    progname, *args = argv
    progname = pth.Path(progname).name      # or .stem to have .py stripped

    description = __doc__       # use module own docstring for description

    parser = argparse.ArgumentParser(
        prog=progname,
        description=description,
        usage=None,      # auto-generated by default
        epilog=None,     # Text at the bottom of help
        )

    parser.add_argument('-v', '--verbose',
        default=0, action='count',
        help='verbosity level. Can be combined, i.e. -vvvvv')

    parser.add_argument('-l', '--list-targets',
        action='store_true',
        help='list available targets and exit')

    parser.add_argument('-s', '--spec',
        dest='specfile', metavar='SPECFILE.toml',
        type=pth.Path, default=DEFAULTS['spec'],
        help='path to a spec file in TOML format')
    
    parser.add_argument('--out-dir',
        dest='rootdir', metavar='OUTDIR',
        type=pth.Path, default=DEFAULTS['rootdir'],
        help='output root directory for downloads')
    
    parser.add_argument('targets',
        nargs='*', metavar='..TARGETS',
        default=['ALL'],
        help='Targets to be downloaded (or ALL)')
    
    parsed = parser.parse_args(args)
    assert parsed.specfile.is_file()
    return vars(parsed)

def set_loglevel(logobj, nverbose, *,
                 available_names=('info', 'warning', 'error', 'debug'),
                 default=DEFAULTS['loglevel']):
    available_names = list(available_names)
    try:
        level_name = available_names[nverbose]
    except IndexError:
        level_name = available_names[-1]
    # level = getattr(log, level.upper())     # transform
    levels = logging.getLevelNamesMapping()
    selected = levels.get(level_name.upper(), default.upper())
    logobj.setLevel(selected)  
    

if __name__ == '__main__':
    parsed = parse_args()
    # Set provided logging verbosity
    nverbose = parsed['verbose']
    set_loglevel(log, nverbose)
    log.debug(f'Log level is {log.level}')

    log.debug(f'Parsed args:\n{parsed}')

    spec = load_spec(parsed['specfile'])
    log.debug(f'Got spec:\n{spec}')

    if parsed['list_targets'] is True:
        targets = spec_targets(spec)
        targets = '\n\t'.join(targets)
        print('Available targets:', targets, sep='\n\t')
        exit(0)     # inversion of control

    rootdir = parsed['rootdir']
    rootdir.mkdir(exist_ok=True)            # create output dir if not exists

    targets = parsed['targets']
    if 'ALL' in targets:
        targets = spec_targets(spec)
    log.info(f'Using targets: {" ".join(targets)}')

    progress = ProgressTracker(len(targets))

    def download_one(target):
        size = download(spec, target, rootdir, progress=progress)
        progress.print_message(f'INFO: {target} {human_size(size)}')
        return size

    with concurrent.futures.ThreadPoolExecutor(
            max_workers=DEFAULTS['parallel_downloads']) as executor:
        future_map = {
            executor.submit(download_one, target): target
            for target in targets
        }
        for future in concurrent.futures.as_completed(future_map):
            target = future_map[future]
            try:
                future.result()
            except Exception as e:
                raise DLError(f'Failed to download {target}: {e}') from e
