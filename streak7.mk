# Dell Streak 7 Make File

# inherit vendor specific blobs
$(call inherit-product-if-exists, vendor/dell/streak7/streak7-vendor.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 480
TARGET_SCREEN_WIDTH := 800

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/etc/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/prebuilts/etc/nvram.txt:system/etc/wifi/nvram.txt \
    $(LOCAL_PATH)/prebuilts/etc/nvcamera.conf:system/etc/nvcamera.conf \
    $(LOCAL_PATH)/prebuilts/root/init.streak7.rc:root/init.streak7.rc \
    $(LOCAL_PATH)/prebuilts/root/fstab.streak7:root/fstab.streak7 \
    $(LOCAL_PATH)/prebuilts/root/init.streak7.usb.rc:root/init.streak7.usb.rc \
    $(LOCAL_PATH)/prebuilts/root/ueventd.streak7.rc:root/ueventd.streak7.rc \
    $(LOCAL_PATH)/prebuilts/root/sbin/ln_named_part:root/sbin/ln_named_part \
    $(LOCAL_PATH)/prebuilts/bin/checkifmodemexists.sh:system/bin/checkifmodemexists.sh \
    frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml
    
PRODUCT_COPY_FILES += \
  $(LOCAL_PATH)/prebuilts/etc/vold.fstab:system/etc/vold.fstab \
  $(LOCAL_PATH)/prebuilts/usr/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
  $(LOCAL_PATH)/prebuilts/etc/media_profiles.xml:system/etc/media_profiles.xml \
  $(LOCAL_PATH)/prebuilts/usr/atmel-maxtouch.idc:system/usr/idc/mXT224_touchscreen.idc \
  $(LOCAL_PATH)/prebuilts/etc/audio_policy.conf:system/etc/audio_policy.conf \
  $(LOCAL_PATH)/prebuilts/etc/gps.conf:system/etc/gps.conf \
  $(LOCAL_PATH)/prebuilts/etc/gpsconfig.xml:system/etc/gpsconfig.xml \
  $(LOCAL_PATH)/prebuilts/etc/mixer_paths.xml:system/etc/mixer_paths.xml \
  $(LOCAL_PATH)/prebuilts/usr/panjit_touch.idc:system/usr/idc/panjit_touch.idc 

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/bluetooth/bt_vendor.conf:system/etc/bluetooth/bt_vendor.conf

PRODUCT_CHARACTERISTICS := tablet

PRODUCT_TAGS += dalvik.gc.type-precise
    
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory \
    audio.primary.streak7 \
    audio_policy.streak7 \
    audio.a2dp.default \
    hwcomposer.streak7 \
    libaudioutils \
    libtinyalsa \
    audio.usb.default \
    libaudioutils \
    libtinyalsa \
    l2ping \
    hciconfig \
    hcitool \
    libnetcmdiface \
    liba2dp \
    tinymix \
    tinyplay \
    tinycap \
    tinyrec \
    lights.streak7 \
    sensors.streak7 \
    power.streak7 \
    com.android.future.usb.accessory \
    libinvensense_mpl \
    drmserver \
    librs_jni \
    libdrmframework_jni

#File System
PRODUCT_PACKAGES += \
    setup_fs \
    make_ext4fs

PRODUCT_PACKAGES += \
    libpkip \
    libnetcmdiface \
    wmiconfig

#Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.usb.default \
    libaudioutils \
    liba2dp \
    libasound \
    libtinyalsa \
    tinyplay \
    tinycap \
    tinymix \
    rild \
    libhuaweigeneric-ril

#Wifi
PRODUCT_PACKAGES += \
    fw_bcm4329.bin \
    fw_bcm4329_apsta.bin

# we have enough storage space to hold precise GC data

# override
PRODUCT_PROPERTY_OVERRIDES := \
    ro.wifi.country=US \
    ro.opengles.version=131072 \
    dalvik.vm.dexopt-data-only=1 \
    persist.sys.usb.config=mtp,adb \
    wifi.supplicant_scan_interval=180

PRODUCT_PROPERTY_OVERRIDES := \
    ro.dinfo.radio=Wifi \
    ro.bq.gpu_to_cpu_unsupported=1 \
    debug.hwui.render_dirty_regions=false \
    ro.opengles.version=131072 \
    ro.opengles.surface.rgb565=true \
    ro.hwui.use_gpu_pixel_buffers=false

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.secure=0 \
    persist.sys.strictmode.visual=0

ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0
ADDITIONAL_DEFAULT_PROPERTIES += persist.sys.strictmode.visual=0

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.zygote.disable_gl_preload=true

PRODUCT_CHARACTERISTICS := tablet

PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dexopt-data-only=1 \
    dalvik.vm.heapstartsize=8m \
    dalvik.vm.heapgrowthlimit=96m \
    dalvik.vm.heapsize=300m \
    dalvik.vm.heaptargetutilization=0.75 \
    dalvik.vm.heapminfree=512k \
    dalvik.vm.heapmaxfree=8m


DEVICE_PACKAGE_OVERLAYS := device/dell/streak7/overlay
# Omni packages
PRODUCT_PACKAGES += \
        OmniSwitch
