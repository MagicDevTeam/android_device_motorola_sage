# This script is included in squisher
# It is the final build step (after OTA package)

# Delete unwanted apps
rm -f $REPACK/ota/system/app/RomManager.apk
rm -f $REPACK/ota/system/app/Torch.apk
rm -f $REPACK/ota/system/app/Androidian.apk
rm -f $REPACK/ota/system/app/CMWallpapers.apk
rm -f $REPACK/ota/system/app/Cyanbread.apk
rm -f $REPACK/ota/system/app/Development.apk
rm -f $REPACK/ota/system/app/FileManager.apk
rm -f $REPACK/ota/system/app/Protips.apk

# these scripts are not required
#rm $REPACK/ota/system/etc/init.d/03firstboot
#rm $REPACK/ota/system/etc/init.d/04modules
#rm $REPACK/ota/system/etc/init.d/06mountdl
#rm $REPACK/ota/system/etc/init.d/20userinit

mkdir -p $REPACK/ota/system/etc/terminfo/x
cp $REPACK/ota/system/etc/terminfo/l/linux $REPACK/ota/system/etc/terminfo/x/xterm

# prebuilt boot, devtree, logo & updater-script
cp -f $ANDROID_BUILD_TOP/device/motorola/sage/updater-script $REPACK/ota/META-INF/com/google/android/updater-script
#cp -f $ANDROID_BUILD_TOP/device/motorola/sage/prebuilt/lib/libcameraservice.so $REPACK/ota/system/lib/libcameraservice.so
#cp -f $ANDROID_BUILD_TOP/device/motorola/sage/prebuilt/lib/libOMX_Core.so $REPACK/ota/system/lib/libOMX_Core.so
cp -f $ANDROID_BUILD_TOP/device/motorola/sage/prebuilt/app/ADWLauncher.apk $REPACK/ota/system/app/ADWLauncher.apk
cp -f $ANDROID_BUILD_TOP/device/motorola/sage/prebuilt/app/Mms.apk $REPACK/ota/system/app/Mms.apk
cp -f $ANDROID_BUILD_TOP/device/motorola/sage/prebuilt/app/MmsExtra.apk $REPACK/ota/system/app/MmsExtra.apk
cp -f $ANDROID_BUILD_TOP/device/motorola/sage/prebuilt/lib/libphoneloc-jni.so $REPACK/ota/system/lib/libphoneloc-jni.so
cp -f $ANDROID_BUILD_TOP/device/motorola/sage/prebuilt/usr/share/phoneloc.dat $REPACK/ota/system/usr/share/phoneloc.dat

