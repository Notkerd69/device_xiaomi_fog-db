#
# Copyright (C) 2022 The pixysOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common pixys stuff.
$(call inherit-product, vendor/pixys/config/common_full_phone.mk)

# Inherit from fog device
$(call inherit-product, device/xiaomi/fog/device.mk)

# PixysOS flags
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := false
TARGET_SUPPORTS_GOOGLE_RECORDER := true

PRODUCT_NAME := pixys_fog
PRODUCT_DEVICE := fog
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi 10C

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

BUILD_FINGERPRINT := Redmi/fog_global/fog:12/SKQ1.211103.001/V13.0.5.0.SGEMIXM:user/release-keys
