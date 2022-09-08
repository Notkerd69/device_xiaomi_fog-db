#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Komodo-OS stuff.
$(call inherit-product, vendor/komodo/config/common.mk)

# Inherit from fog device
$(call inherit-product, device/xiaomi/fog/device.mk)

# Komodo Stuff
KOMODO_OFFICIAL := true
KOMODO_GAPPS_TYPE := gapps
KOMODO_VARIANT := RELEASE

PRODUCT_NAME := komodo_fog
PRODUCT_DEVICE := fog
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi 10C

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Some Build Flags
TARGET_BOOT_ANIMATION_RES := 720
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_USES_BLUR := true
TARGET_USES_AOSP_CHARGER := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_INCLUDE_STOCK_ARCORE := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="fog-user 12 SKQ1.211103.001 V13.0.2.0.SGEMIXM release-keys"

BUILD_FINGERPRINT := Redmi/fog_global/fog:12/SKQ1.211103.001/V13.0.2.0.SGEMIXM:user/release-keys
