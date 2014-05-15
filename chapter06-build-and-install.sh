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
    m4-1.4.17-0.bee \
    flex-2.5.38-0.bee \
    bison-3.0.2-0.bee \
    grep-2.16-0.bee \
    readline-6.2-0.bee \
    bash-4.2-0.bee \
    bc-1.06.95-0.bee \
    libtool-2.4.2-0.bee \
    gdbm-1.11-0.bee \
    inetutils-1.9.2-0.bee \
    perl-5.18.2-0.bee \
    autoconf-2.69-0.bee \
    automake-1.14.1-0.bee \
    diffutils-3.3-0.bee \
    gawk-4.1.0-0.bee \
    findutils-4.4.2-0.bee \
    gettext-0.18.3.2-0.bee \
    groff-1.22.2-0.bee \
    xz-5.0.5-0.bee \
    grub-2.00-0.bee \
    less-458-0.bee \
    gzip-1.6-0.bee \
    iproute2-3.12.0-0.bee \
    kbd-2.0.1-0.bee \
    kmod-16-0.bee \
    libpipeline-1.2.6-0.bee \
    make-4.0-0.bee \
    patch-2.7.1-0.bee \

do
    beesh "chapter06/${bee}" --no-archive-build "${@}" --cleanup

    bee --destdir=${LFS} install ${bee%.bee}
done

