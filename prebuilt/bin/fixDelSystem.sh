#!/sbin/sh

# 
# Fix install problem in PhoenixMod for cliq2 by wanggjghost
# www.591fan.com
#
# As there's some problem about using the 2ndInit=>recovery to install the update.zip
# I had to use this script to pre delete all the files/folders in /sytem 
# and remount the system to rw
# This file should be removed in the future
#

mount -o remount,rw /system
mount -o remount,rw /

rm -rf /system/* > /data/fixDelSystem.log

rm $0

