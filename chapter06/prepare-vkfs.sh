#!/bin/bash
#
# this file is part of bee-lfs v7.1
#  by Tobias Dreyer <tewdreyer@gmail.com> 2012
#
# this is the bee-file which installs the "virtual kernel file systems"
# see LFS 7.1 chapter 6: 6.2
# http://www.linuxfromscratch.org/lfs/view/7.1/chapter06/kernfs.html
#

: ${LFS:=/mnt/lfs}

mkdir -pv ${D}/${LFS}/{dev,proc,sys}

mknod -m 600 ${LFS}/dev/console c 5 1
mknod -m 666 ${LFS}/dev/null c 1 3

mount -v --bind /dev ${LFS}/dev

mount -vt devpts devpts ${LFS}/dev/pts
mount -vt tmpfs shm ${LFS}/dev/shm
mount -vt proc proc ${LFS}/proc
mount -vt sysfs sysfs ${LFS}/sys
