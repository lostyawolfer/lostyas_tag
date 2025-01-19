#!/usr/bin/env python3

"""Quick-deploy code to the remote server and run the MC server itself."""

import logging
import pathlib as pth
import shlex
import shutil
import subprocess as sp

logging.basicConfig()
log = logging.getLogger(__name__ if __name__ != '__main__' else 'MAIN')

def scp_copy(src, dst, *,
        ssh_user, ssh_host, ssh_port=22,
        force_win_dst=False):
    """Wraps SCP as Python function"""

    assert float(ssh_port).is_integer()
    ssh_port = int(ssh_port)

    dst_cls = pth.Path if not force_win_dst else pth.PureWindowsPath
    dst = dst_cls(dst).as_posix()
    src = pth.Path(src)


    cmd = ['scp', '-OCv', '-P', f'{ssh_port}', f'{src}', f'{ssh_user}@{ssh_host}:{dst}']
    cmd[0] = shutil.which(cmd[0])       # transform as required per sp.run

    if log.level <= logging.DEBUG:
        cmd_str = shlex.join(cmd)
        log.debug(f'Built command {cmd_str}')

    res = sp.run(cmd, capture_output=True, text=True, check=True)
    return res


if __name__ == '__main__':
    log.setLevel(logging.DEBUG)

    env = open('.env').read()
    env = dict([val.split('=', maxsplit=1) for val in env.splitlines()])
    env = {k.lower(): v for k, v in env.items()}

    res = scp_copy('build/tern.c', 'C:/Users/Lostya/Desktop/', **env, force_win_dst=True)