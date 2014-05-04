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

do
    beesh "chapter06/${bee}" --no-archive-build "${@}" --cleanup

    bee --destdir=${LFS} install ${bee%.bee}
done

