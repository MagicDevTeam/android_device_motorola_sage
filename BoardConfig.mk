# Copyright (C) 2009 The Android Open Source Project
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

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).

# Model variant (DEFY_FROYO, DEFY_GINGER)
#BOARD_DEFY_MODEL := DEFY_FROYO

USE_CAMERA_STUB := false
BOARD_USE_FROYO_LIBCAMERA := true
BOARD_USES_GENERIC_AUDIO := false

TARGET_NO_RECOVERY := false
TARGET_NO_RADIOIMAGE := true
TARGET_NO_BOOTLOADER := true
TARGET_NO_PREINSTALL := true
TARGET_BOOTLOADER_BOARD_NAME := sage

# Board properties
TARGET_BOARD_PLATFORM := omap3
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a8
TARGET_ARCH_VARIANT_FPU := neon
TARGET_GLOBAL_CFLAGS += -mtune=cortex-a8
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a8
TARGET_OMAP3 := true
COMMON_GLOBAL_CFLAGS += -DTARGET_OMAP3 -DOMAP_COMPAT -DMOTOROLA_UIDS
#ARCH_ARM_HAVE_TLS_REGISTER := false
LOCAL_CFLAGS += -DWVGA_BUFFERS  #fix video rec

# Wifi related defines
BOARD_WLAN_DEVICE           := wl1271
WPA_SUPPLICANT_VERSION      := VER_0_6_X
BOARD_WPA_SUPPLICANT_DRIVER := CUSTOM
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/tiwlan_drv.ko"
WIFI_DRIVER_MODULE_NAME     := tiwlan_drv
WIFI_DRIVER_FW_STA_PATH     := "/system/etc/wifi/fw_wlan1271.bin"
WIFI_FIRMWARE_LOADER        := wlan_loader
PRODUCT_WIRELESS_TOOLS      := true
BOARD_SOFTAP_DEVICE         := wl1271
WPA_SUPPL_APPROX_USE_RSSI   := true
WIFI_AP_DRIVER_MODULE_PATH  := "/system/lib/modules/tiap_drv.ko"
WIFI_AP_DRIVER_MODULE_NAME  := tiap_drv
WIFI_AP_FIRMWARE_LOADER     := wlan_ap_loader
BOARD_HOSTAPD_DRIVER        := true
BOARD_HOSTAPD_DRIVER_NAME   := wilink

BOARD_USE_YUV422I_DEFAULT_COLORFORMAT := true
BOARD_EGL_CFG := device/motorola/sage/egl.cfg
#BOARD_CUSTOM_USB_CONTROLLER := ../../device/motorola/jordan/UsbController.cpp

BOARD_HAVE_BLUETOOTH := true
#BOARD_CUSTOM_BLUEDROID := ../../../device/motorola/jordan/bluedroid.c

BOARD_MASS_STORAGE_FILE_PATH := "/sys/devices/platform/usb_mass_storage/lun0/file"

BOARD_BOOTIMAGE_MAX_SIZE := 0x00380000
BOARD_RECOVERYIMAGE_MAX_SIZE := 0x00480000
BOARD_SYSTEMIMAGE_MAX_SIZE := 0x0a000000
BOARD_USERDATAIMAGE_MAX_SIZE := 0x0c800000 
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_USES_GPSSHIM := true
BOARD_GPS_LIBRARIES := libgps

HARDWARE_OMX := true
TARGET_USE_OMX_RECOVERY := true
TARGET_USE_OMAP_COMPAT  := true
BUILD_WITH_TI_AUDIO := 1
BUILD_PV_VIDEO_ENCODERS := 1

BOARD_USE_USB_MASS_STORAGE_SWITCH := true
BOARD_NO_RGBX_8888 := true
BOARD_USE_KINETO_COMPATIBILITY := true

# Changes related to bootmenu
BOARD_USES_BOOTMENU := true
BOARD_BOOTMODE_CONFIG_FILE := /cache/recovery/bootmode.conf

# Kernel
BOARD_KERNEL_CMDLINE := console=/dev/null rw init=/init ip=off brdrev=P0B androidboot.bootloader=0x0000 mtdparts=omap2-nand.0:1536k@2176k(pds),384k@4480k(cid),640k@6784k(logo),384k(misc),3584k(boot)ro,4608k@15232k(recovery),9088k(cdrom),188800k@29312k(system),135936k@218496k(cache),165376k(userdata),2m@521728k(kpanic) androidboot.mode=reboot mem=498M@0x80C00000
BOARD_KERNEL_BASE := 0x10000000
BOARD_PAGE_SIZE := 0x00000800

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
BOARD_CUSTOM_RECOVERY_KEYMAPPING:= ../../device/motorola/sage/recovery_ui.c
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_RECOVERY_IGNORE_BOOTABLES := true
BOARD_HAS_SMALL_RECOVERY := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_SELECT_BUTTON := true

BOARD_SDCARD_DEVICE_PRIMARY   := /dev/block/mmcblk0p1
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk0
BOARD_SDEXT_DEVICE  := /dev/block/mmcblk0p2
BOARD_SYSTEM_DEVICE := /dev/block/mtdblock7
BOARD_DATA_DEVICE   := /dev/block/mtdblock9

BOARD_NEVER_UMOUNT_SYSTEM := true
#TARGET_RECOVERY_UI_LIB := librecovery_ui_generic
#TARGET_RECOVERY_UPDATER_LIBS += librecovery_updater_generic

# Override cyanogen squisher to customize our update zip package
TARGET_CUSTOM_RELEASETOOL := ./device/motorola/sage/releasetools/squisher

# Sage need 2nd-init binary from motorola common
TARGET_NEEDS_MOTOROLA_HIJACK := true

# In nighly builds only
#ifndef CYANOGEN_RELEASE

#BOARD_HAVE_FM_RADIO := true
#BOARD_FM_DEVICE := wl1271
#TARGET_GLOBAL_CFLAGS += -DHAVE_FM_RADIO
#TARGET_GLOBAL_CPPFLAGS += -DHAVE_FM_RADIO

#endif

# Gingerbread kernel specifics
#ifeq ($(BOARD_DEFY_MODEL),DEFY_GINGER)
#BOARD_USE_CID_ROTATE_34 := true
#endif

