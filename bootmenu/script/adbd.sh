#!/sbin/sh

######## BootMenu Script
######## Execute [ADB Daemon] Menu


export PATH=/sbin:/system/xbin:/system/bin

######## Main Script

mkdir /tmp
chown system.shell /tmp
chmod 0777 /tmp
echo 'msc_adb' > /dev/usb_device_mode

# busybox ash history
mkdir -p /cache/bootmenu
export HISTFILE=/cache/bootmenu/.ash_history
export HISTFILESIZE=256
PATH=/sbin:/system/xbin:/system/bin /sbin/adbd.root &

exit
