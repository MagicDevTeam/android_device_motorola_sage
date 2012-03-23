#!/sbin/sh

#
# Install 2ndInit to system in PhoenixMod for cliq2 by wanggjghost
# www.591fan.com
#
# this script is used to install the 2ndInit to system after all the system files were installed
#
# I use this script because of the problem of the pre-installed 2ndInit 
#
# This file should be removed in the future
#

mount -o remount,rw /system


chmod -R 755 /system/bootmenu/*
chmod 4755 /system/bootmenu/binary/2nd-init
chown  -R 0.0 /system/bootmenu/*

#rm -f /system/bin/bootmenu
rm -f /system/bin/logwrapper
rm -f /system/bin/logwrapper.bin

#cp /system/bootmenu/binary/bootmenu /system/bin/
cp /system/bootmenu/binary/logwrapper.bin /system/bin/
ln -s /system/bin/bootmenu /system/bin/logwrapper

chmod 755 /system/bin/bootmenu
chmod 755 /system/bin/logwrapper.bin


rm $0

