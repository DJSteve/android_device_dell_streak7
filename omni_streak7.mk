# Release name
PRODUCT_RELEASE_NAME := Streak7
ROM_BUILDTYPE := Streakdroid

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

USE_LOWFPS_BOOTANI := true

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/dell/streak7/streak7.mk)




## Device identifier. This must come after all inclusions
PRODUCT_DEVICE       := streak7
PRODUCT_NAME         := omni_streak7
PRODUCT_BRAND        := Dell
PRODUCT_MODEL        := Streak 7
PRODUCT_MANUFACTURER := Qisda

# Configure as xhdpi device to prevent breaking without mdpi drawables (copied from tf101)
PRODUCT_AAPT_CONFIG := normal mdpi hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi


# Bootanimation
# PRODUCT_BOOTANIMATION := vendor/omni/prebuilt/bootanimation/bootanimation.zip
