#!/bin/bash

set -e

source _load-config.lib

for bee in \
    tc-binutils_pass1-2.24-0.bee \
    tc-gcc_pass1-4.8.2-0.bee \
    tc-linux-api-headers-3.13.3-0.bee \
    tc-glibc-2.19-0.bee \
    tc-libstdc++-4.8.2-0.bee \
    tc-binutils_pass2-2.24-0.bee \
    tc-gcc_pass2-4.8.2-0.bee \
    tc-tcl-8.6.1-0.bee \
    tc-expect-5.45-0.bee \
    tc-dejagnu-1.5.1-0.bee \
    tc-check-0.9.12-0.bee \
    tc-ncurses-5.9-0.bee \
    tc-bash-4.2-0.bee \
    tc-bzip2-1.0.6-0.bee \
    tc-coreutils-8.22-0.bee \
    tc-diffutils-3.3-0.bee \
    tc-file-5.17-0.bee \
    tc-findutils-4.4.2-0.bee \
    tc-gawk-4.1.0-0.bee \
    tc-gettext-0.18.3.2-0.bee \
    tc-grep-2.16-0.bee \
    tc-gzip-1.6-0.bee \
    tc-m4-1.4.17-0.bee \
    tc-make-4.0-0.bee \
    tc-patch-2.7.1-0.bee \
    tc-perl-5.18.2-0.bee \
    tc-sed-4.2.2-0.bee \
    tc-tar-1.27.1-0.bee \
    tc-texinfo-5.2-0.bee \
    tc-util-linux-2.24.1-0.bee \
    tc-xz-5.0.5-0.bee \
    tc-gmp-5.1.3-0.bee \
    tc-nettle-2.7.1-0.bee \
    tc-gnutls-3.2.13-0.bee \
    tc-wget-1.15-0.bee \
    tc-mpfr-3.1.2-0.bee \
    tc-mpc-1.0.2-0.bee \
    tc-zlib-1.2.8-0.bee \
    tc-pkg-config-0.28-0.bee \
    tc-bison-3.0.2-0.bee \
    tc-gdbm-1.11-0.bee \
    tc-autoconf-2.69-0.bee \
    tc-flex-2.5.38-0.bee \
    tc-kmod-16-0.bee ; do
  beesh "chapter05/${bee}" --install --no-archive-build "${@}" --cleanup
done

