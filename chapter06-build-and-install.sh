#!/bin/bash

set -e

source _load-config.lib

for bee in \
    fhs-1-0.bee \
    linux-api-headers-3.13.3-0.bee \
    man-pages-3.59-0.bee \
    glibc-2.19-0.bee \
    zlib-1.2.8-0.bee \
    file-5.17-0.bee \
    binutils-2.24-0.bee \
    gmp-5.1.3-0.bee \
    mpfr-3.1.2-0.bee \
    mpc-1.0.2-0.bee \
    gcc-4.8.2-0.bee \
    sed-4.2.2-0.bee \
    bzip2-1.0.6-0.bee \
    pkg-config-0.28-0.bee \
    ncurses-5.9-0.bee \
    shadow-4.1.5.1-0.bee \
    psmisc-22.20-0.bee \
    procps-ng-3.3.9-0.bee \
    e2fsprogs-1.42.9-0.bee \
    coreutils-8.22-0.bee \
    iana-etc-2.30-0.bee \

do
    beesh "chapter06/${bee}" --no-archive-build "${@}" --cleanup

    bee --destdir=${LFS} install ${bee%.bee}
done

