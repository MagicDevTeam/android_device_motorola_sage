#!/sbin/sh

export PATH=$PATH:/sbin:/system/xbin:/system/bin

busybox mount -t yaffs2 -o nosuid,nodev,noatime,nodiratime /dev/block/mtdblock8 /cache

mv /cache/recovery/bootmode.conf /cache/recovery/last_bootmode

