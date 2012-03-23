#!/sbin/sh

######## BootMenu Script
######## Execute [2nd-init] Menu


export PATH=/sbin:/system/xbin:/system/bin

######## Main Script

mount -o remount,rw /
rm -f /*.rc
cp -r -f /system/bootmenu/2nd-init/* /
chmod 755 /*.rc
chmod 4755 /system/bootmenu/binary/2nd-init

ADBD_RUNNING=`ps | grep adbd | grep -v grep`
if [ -z "$ADB_RUNNING" ]; then
    rm -f /sbin/adbd.root
    rm -f /tmp/usbd_current_state
    #delete if is a symlink
    [ -L "/tmp" ] && rm -f /tmp
    mkdir -p /tmp
else
    # well, not beautiful but do the work
    # to keep current usbd state
    if [ -L "/tmp" ]; then
        mv /tmp/usbd_current_state / 2>/dev/null
        rm -f /tmp
        mkdir -p /tmp
        mv /usbd_current_state /tmp/ 2>/dev/null
    fi
fi
## unmount devices
sync
umount /acct
umount /mnt/asec
umount /dev/cpuctl
umount /dev/pts
umount /mnt/asec
umount /mnt/obb
umount /cache
umount /data

######## Cleanup

#rm /sbin/lsof

## busybox cleanup..
for cmd in $(/sbin/busybox --list); do
  [ -L "/sbin/$cmd" ] && rm "/sbin/$cmd"
done

rm -f /sbin/busybox

## used for adbd shell (can be bash also)
/system/xbin/ln -s /system/xbin/busybox /sbin/sh
## reduce lcd backlight to save battery
echo 18 > /sys/class/leds/lcd-backlight/brightness


######## Let's go

/system/bootmenu/binary/2nd-init

