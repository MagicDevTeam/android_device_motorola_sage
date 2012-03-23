#!/sbin/sh

sleep 5

for i in $(seq 1 10)
do
    TMP=$(mount | grep /tmp)
    if [ -z "$TMP" ]
    then
        break
    fi
    umount -l /tmp
    sleep 1
done

mount -o remount,rw /
rm -r /tmp
mkdir -p /tmp
touch /tmp/recovery.log
rm sdcard
mkdir sdcard


# Restart with root hacked adbd
#mount -o remount,rw /
#busybox kill $(busybox ps | busybox grep adbd)
#echo msc_adb > /dev/usb_device_mode
#touch /tmp/recovery.log


sync
#/sbin/adbd &

#sleep 1
#umount -l /system
#/sbin/adbd recovery &
