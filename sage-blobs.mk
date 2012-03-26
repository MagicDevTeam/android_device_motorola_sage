# Copyright (C) 2011 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

DEVICE_PREBUILT := device/motorola/sage/prebuilt

#key layouts, names must fit the ones in /proc/bus/input/devices, qwerty.kl is the fallback one.
PRODUCT_COPY_FILES += \
	device/motorola/sage/keychars/umts_sage-keypad.kcm.bin:system/usr/keychars/umts_sage-keypad.kcm.bin \
	device/motorola/sage/keychars/qwerty.kcm.bin:system/usr/keychars/qwerty.kcm.bin \
        device/motorola/sage/keychars/qwerty2.kcm.bin:system/usr/keychars/qwerty2.kcm.bin \
        device/motorola/sage/keychars/sholes-keypad.kcm.bin:system/usr/keychars/sholes-keypad.kcm.bin \
	device/motorola/sage/keylayout/cpcap-key.kl:system/usr/keylayout/cpcap-key.kl \
	device/motorola/sage/keylayout/umts_sage-keypad.kl:system/usr/keylayout/umts_sage-keypad.kl \
	device/motorola/sage/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
        device/motorola/sage/keylayout/sholes-keypad.kl:system/usr/keylayout/sholes-keypad.kl \
	device/motorola/sage/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \

#etc
PRODUCT_COPY_FILES += \
	device/motorola/sage/bootmenu/recovery/recovery.fstab:system/etc/recovery.fstab \
	device/motorola/sage/prebuilt/etc/init.d/01sysctl:system/etc/init.d/01sysctl \
	device/motorola/sage/prebuilt/etc/init.d/05mountsd:system/etc/init.d/05mountsd \
	device/motorola/sage/prebuilt/etc/profile:system/etc/profile \
	device/motorola/sage/prebuilt/etc/sysctl.conf:system/etc/sysctl.conf \
	device/motorola/sage/prebuilt/etc/busybox.fstab:system/etc/fstab \
	device/motorola/sage/prebuilt/etc/wifi/tiwlan.ini:system/etc/wifi/tiwlan.ini \
	device/motorola/sage/prebuilt/etc/wifi/tiwlan_rfmd.ini:system/etc/wifi/tiwlan_rfmd.ini \
	device/motorola/sage/prebuilt/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
	device/motorola/sage/prebuilt/etc/gpsconfig.xml:system/etc/gpsconfig.xml \
	device/motorola/sage/prebuilt/etc/location.cfg:system/etc/location.cfg \
	device/motorola/sage/media_profiles.xml:system/etc/media_profiles.xml \

ifdef CYANOGEN_RELEASE
	PRODUCT_COPY_FILES += device/motorola/sage/custom_backup_release.txt:system/etc/custom_backup_list.txt
else
	PRODUCT_COPY_FILES += device/motorola/sage/custom_backup_list.txt:system/etc/custom_backup_list.txt
endif

#prebuilt binaries (for buggy versions)
PRODUCT_COPY_FILES += \
	device/motorola/sage/prebuilt/bin/fixDelSystem.sh:system/bin/fixDelSystem.sh \
	device/motorola/sage/prebuilt/bin/install2ndInit.sh:system/bin/install2ndInit.sh \

#app
PRODUCT_COPY_FILES += \
	device/motorola/sage/prebuilt/app/RootExplorer.apk:system/app/RootExplorer.apk \
	
#Bootmenu
PRODUCT_COPY_FILES += \
	device/motorola/sage/bootmenu/profiles/cm7_release_files/init.rc:system/bootmenu/2nd-init/init.rc \
	device/motorola/sage/bootmenu/profiles/cm7_release_files/init.mapphone_umts.rc:system/bootmenu/2nd-init/init.mapphone_umts.rc \
	device/motorola/sage/bootmenu/profiles/cm7_release_files/ueventd.rc:system/bootmenu/2nd-init/ueventd.rc \
	device/motorola/sage/bootmenu/profiles/cm7_release_files/init:system/bootmenu/2nd-init/init \
	device/motorola/sage/bootmenu/profiles/cm7_release_files/sbin/ueventd:system/bootmenu/2nd-init/sbin/ueventd \
	device/motorola/sage/bootmenu/binary/adbd:system/bootmenu/binary/adbd \
	device/motorola/sage/bootmenu/binary/logwrapper.bin:system/bootmenu/binary/logwrapper.bin \
	device/motorola/sage/bootmenu/binary/logwrapper.bin:system/bin/logwrapper.bin \
	device/motorola/sage/bootmenu/binary/lsof.static:system/bootmenu/binary/lsof \
	device/motorola/sage/bootmenu/binary/2nd-init.common:system/bootmenu/binary/2nd-init \
	device/motorola/sage/bootmenu/binary/busybox:system/bootmenu/binary/busybox \
	device/motorola/sage/bootmenu/config/bootmenu_bypass:system/bootmenu/config/bootmenu_bypass \
	device/motorola/sage/bootmenu/config/default.prop:system/bootmenu/config/default.prop \
	device/motorola/sage/bootmenu/config/default_bootmode.conf:system/bootmenu/config/default_bootmode.conf \
	device/motorola/sage/bootmenu/config/overclock.conf:system/bootmenu/config/overclock.conf \
	device/motorola/sage/bootmenu/ext/su:system/bootmenu/ext/su \
	device/motorola/sage/bootmenu/images/background.png:system/bootmenu/images/background.png \
	external/bootmenu/images/indeterminate1.png:system/bootmenu/images/indeterminate1.png \
	external/bootmenu/images/indeterminate2.png:system/bootmenu/images/indeterminate2.png \
	external/bootmenu/images/indeterminate3.png:system/bootmenu/images/indeterminate3.png \
	external/bootmenu/images/indeterminate4.png:system/bootmenu/images/indeterminate4.png \
	external/bootmenu/images/indeterminate5.png:system/bootmenu/images/indeterminate5.png \
	external/bootmenu/images/indeterminate6.png:system/bootmenu/images/indeterminate6.png \
	external/bootmenu/images/progress_empty.png:system/bootmenu/images/progress_empty.png \
	external/bootmenu/images/progress_fill.png:system/bootmenu/images/progress_fill.png \
	device/motorola/sage/bootmenu/recovery/res/keys:system/bootmenu/recovery/res/keys \
	device/motorola/sage/bootmenu/recovery/res/images/icon_error.png:system/bootmenu/recovery/res/images/icon_error.png \
	device/motorola/sage/bootmenu/recovery/res/images/icon_firmware_error.png:system/bootmenu/recovery/res/images/icon_firmware_error.png \
	device/motorola/sage/bootmenu/recovery/res/images/icon_done.png:system/bootmenu/recovery/res/images/icon_done.png \
	device/motorola/sage/bootmenu/recovery/res/images/icon_installing.png:system/bootmenu/recovery/res/images/icon_installing.png \
	device/motorola/sage/bootmenu/recovery/res/images/icon_firmware_install.png:system/bootmenu/recovery/res/images/icon_firmware_install.png \
	device/motorola/sage/bootmenu/recovery/res/images/indeterminate1.png:system/bootmenu/recovery/res/images/indeterminate1.png \
	device/motorola/sage/bootmenu/recovery/res/images/indeterminate2.png:system/bootmenu/recovery/res/images/indeterminate2.png \
	device/motorola/sage/bootmenu/recovery/res/images/indeterminate3.png:system/bootmenu/recovery/res/images/indeterminate3.png \
	device/motorola/sage/bootmenu/recovery/res/images/indeterminate4.png:system/bootmenu/recovery/res/images/indeterminate4.png \
	device/motorola/sage/bootmenu/recovery/res/images/indeterminate5.png:system/bootmenu/recovery/res/images/indeterminate5.png \
	device/motorola/sage/bootmenu/recovery/res/images/indeterminate6.png:system/bootmenu/recovery/res/images/indeterminate6.png \
	device/motorola/sage/bootmenu/recovery/res/images/progress_empty.png:system/bootmenu/recovery/res/images/progress_empty.png \
	device/motorola/sage/bootmenu/recovery/res/images/progress_fill.png:system/bootmenu/recovery/res/images/progress_fill.png \
	device/motorola/sage/bootmenu/recovery/res/images/icon_clockwork.png:system/bootmenu/recovery/res/images/icon_clockwork.png \
        device/motorola/sage/bootmenu/recovery/sbin/adbd:system/bootmenu/recovery/sbin/adbd \
        device/motorola/sage/bootmenu/recovery/sbin/badblocks:system/bootmenu/recovery/sbin/badblocks \
	device/motorola/sage/bootmenu/recovery/sbin/dedupe:system/bootmenu/recovery/sbin/dedupe \
	device/motorola/sage/bootmenu/recovery/sbin/dump_image:system/bootmenu/recovery/sbin/dump_image \
	device/motorola/sage/bootmenu/recovery/sbin/e2fsck:system/bootmenu/recovery/sbin/e2fsck \
	device/motorola/sage/bootmenu/recovery/sbin/fix_permissions:system/bootmenu/recovery/sbin/fix_permissions \
	device/motorola/sage/bootmenu/recovery/sbin/killrecovery.sh:system/bootmenu/recovery/sbin/killrecovery.sh \
	device/motorola/sage/bootmenu/recovery/sbin/nandroid-md5.sh:system/bootmenu/recovery/sbin/nandroid-md5.sh \
	device/motorola/sage/bootmenu/recovery/sbin/parted:system/bootmenu/recovery/sbin/parted \
	device/motorola/sage/bootmenu/recovery/sbin/postrecoveryboot.sh:system/bootmenu/recovery/sbin/postrecoveryboot.sh \
	device/motorola/sage/bootmenu/recovery/sbin/recovery_stable:system/bootmenu/recovery/sbin/recovery_stable \
        device/motorola/sage/bootmenu/recovery/sbin/recovery:system/bootmenu/recovery/sbin/recovery \
	device/motorola/sage/bootmenu/recovery/sbin/resize2fs:system/bootmenu/recovery/sbin/resize2fs \
	device/motorola/sage/bootmenu/recovery/sbin/sdparted:system/bootmenu/recovery/sbin/sdparted \
	device/motorola/sage/bootmenu/recovery/sbin/mke2fs:system/bootmenu/recovery/sbin/mke2fs \
	device/motorola/sage/bootmenu/recovery/sbin/mke2fs.bin:system/bootmenu/recovery/sbin/mke2fs.bin \
	device/motorola/sage/bootmenu/recovery/sbin/tune2fs.bin:system/bootmenu/recovery/sbin/tune2fs \
	device/motorola/sage/bootmenu/recovery/recovery.fstab:system/bootmenu/recovery/recovery.fstab \
	device/motorola/sage/bootmenu/script/2nd-init.sh:system/bootmenu/script/2nd-init.sh \
	device/motorola/sage/bootmenu/script/2nd-boot.sh:system/bootmenu/script/2nd-boot.sh \
	device/motorola/sage/bootmenu/script/adbd.sh:system/bootmenu/script/adbd.sh \
	device/motorola/sage/bootmenu/script/bootmode_clean.sh:system/bootmenu/script/bootmode_clean.sh \
	device/motorola/sage/bootmenu/script/overclock.sh:system/bootmenu/script/overclock.sh \
	device/motorola/sage/bootmenu/script/post_bootmenu.sh:system/bootmenu/script/post_bootmenu.sh \
	device/motorola/sage/bootmenu/script/pre_bootmenu.sh:system/bootmenu/script/pre_bootmenu.sh \
	device/motorola/sage/bootmenu/script/reboot_command.sh:system/bootmenu/script/reboot_command.sh \
	device/motorola/sage/bootmenu/script/recovery.sh:system/bootmenu/script/recovery.sh \
	device/motorola/sage/bootmenu/script/recovery_stable.sh:system/bootmenu/script/recovery_stable.sh \
	device/motorola/sage/bootmenu/script/recoveryexit.sh:system/bootmenu/script/recoveryexit.sh 
#end of sage-blobs.mk
