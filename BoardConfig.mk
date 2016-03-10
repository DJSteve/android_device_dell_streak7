#Board Information
TARGET_BOARD_INFO_FILE := device/dell/streak7/board-info.txt
BOARD_EGL_CFG := vendor/dell/streak7/proprietary/lib/egl/egl.cfg
BOARD_EGL_NEEDS_LEGACY_FB := true

TARGET_ARCH_VARIANT := armv7-a
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_CPU_VARIANT := generic
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_BOARD_PLATFORM := tegra
TARGET_TEGRA_VERSION := t20
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_SMP := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a
TARGET_ARCH_VARIANT_FPU := vfpv3-d16
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HIGH_OPTIMIZATION := true

TARGET_NO_RECOVERY := true
TARGET_BUILD_RECOVERY := false
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := streak7
BOARD_BUILD_BOOTLOADER := false

BOARD_KERNEL_BASE := 0x10000000
BOARD_PAGE_SIZE := 2048

BOARD_OMX_NEEDS_LEGACY_AUDIO := true
BOARD_NEED_OMX_COMPAT := true
BOARD_NEED_OMX_COMPAT_XOOM := true
BOARD_USB_AUDIO_CARD_ID := 0
TARGET_LEGACY_UNSUPPORTED_LIBAUDIO := true

USE_OPENGL_RENDERER := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true
SKIP_SET_METADATA := true
BOARD_USE_MHEAP_SCREENSHOT := true
BOARD_NEEDS_OLD_HWC_API := true
BOARD_EGL_SKIP_FIRST_DEQUEUE := true
MAX_EGL_CACHE_KEY_SIZE := 4096
MAX_EGL_CACHE_SIZE := 2146304
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3

TARGET_32_BIT_SURFACEFLINGER := true

BOARD_NEEDS_LOWFPS_BOOTANI := true

BOARD_USE_SKIA_LCDTEXT := true
SMALLER_FONT_FOOTPRINT := true

TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true
TARGET_BOOTANIMATION_USE_RGB565 := true



#Storage Information
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 5388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 6042880
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 474435456
BOARD_USERDATAIMAGE_PARTITION_SIZE := 107374824
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_DATA_DEVICE := /dev/block/mmcblk3p7
BOARD_DATA_FILESYSTEM := ext4
BOARD_CACHE_DEVICE := /dev/block/mmcblk3p4
BOARD_CACHE_FILESYSTEM := ext4
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_MAX_PARTITIONS := 16
USE_E2FSPROGS := true


# Skip droiddoc build to save build time
BOARD_SKIP_ANDROID_DOC_BUILD := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/dell/streak7/bluetooth

# Wifi related defines
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_wext
BOARD_WLAN_DEVICE := bcm4329
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/dhd.ko"
WIFI_DRIVER_FW_STA_PATH     := "/vendor/firmware/fw_bcm4329.bin"
WIFI_DRIVER_FW_AP_PATH      := "/vendor/firmware/fw_bcm4329_apsta.bin"
WIFI_DRIVER_MODULE_NAME     :=  "dhd"
WIFI_DRIVER_MODULE_ARG      :=  "firmware_path=/vendor/firmware/fw_bcm4329.bin nvram_path=/system/etc/wifi/nvram.txt iface_name=wlan0"

# GPS
BOARD_HAVE_GPS_BCM := true
TARGET_NO_RADIOIMAGE := true

#ldrcc instructions
NEED_WORKAROUND_CORTEX_A9_745320 := true

BOARD_NO_ALLOW_DEQUEUE_CURRENT_BUFFER := true

#Expiermental stuff
BOARD_USES_SECURE_SERVICES := true
BOARD_USES_OVERLAY := true
USE_CAMERA_STUB := false
COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB

# custom recovery ui
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/dell/streak7/recovery/recovery_ui.c
BOARD_HAS_NO_SELECT_BUTTON := true

#TWRP Stuff
DEVICE_RESOLUTION := 800x480
TW_NO_USB_STORAGE := true
TW_FLASH_FROM_STORAGE := true
RECOVERY_SDCARD_ON_DATA := true
TW_NO_REBOOT_BOOTLOADER := true
TW_NO_REBOOT_RECOVERY := true
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"

TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.6
TARGET_KERNEL_SOURCE := kernel/dell/streak7
# Use this config for kernel
TARGET_KERNEL_CONFIG := streak7_djsteve_defconfig



# Display
BOARD_USES_HGL := true
BOARD_USES_OVERLAY := true
BOARD_EGL_NEEDS_LEGACY_FB := true
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true
SKIP_SET_METADATA := true
BOARD_USES_HWCOMPOSER := true
BOARD_NEEDS_OLD_HWC_API := true
BOARD_EGL_SKIP_FIRST_DEQUEUE := true
BOARD_EGL_NEEDS_FNW:= true
ENABLE_WEBGL := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
BOARD_NEED_OMX_COMPAT := true
BOARD_USES_PROPRIETARY_OMX := TF101

ARCH_ARM_USE_NON_NEON_MEMCPY := true

# Audio
#TARGET_PROVIDES_LIBAUDIO := true
#BOARD_USES_AUDIO_LEGACY := true
#BOARD_USES_GENERIC_AUDIO := false
#BOARD_USES_ALSA_AUDIO := false
#BOARD_OMX_NEEDS_LEGACY_AUDIO := true

ICS_CAMERA_BLOB := true
BOARD_EGL_SKIP_FIRST_DEQUEUE := true

MAX_EGL_CACHE_KEY_SIZE := 4096
MAX_EGL_CACHE_SIZE := 2146304
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
  
TARGET_32_BIT_SURFACEFLINGER := true
  
BOARD_NEEDS_LOWFPS_BOOTANI := true

TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true
TARGET_BOOTANIMATION_USE_RGB565 := true

TARGET_BOOTLOADER_BOARD_NAME := Streak7

HAVE_SELINUX := false

ARCH_ARM_HIGH_OPTIMIZATION := true
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_USE_NON_NEON_MEMCPY := true
TARGET_ENABLE_NON_PIE_SUPPORT := true

BOARD_SUPPRESS_EMMC_WIPE := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
