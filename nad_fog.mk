#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common lineage stuff.
$(call inherit-product, vendor/nusantara/config/common_full_phone.mk)

# Nad Stuff
TARGET_BOOT_ANIMATION_RES := 720
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_USES_BLUR := false
USE_PIXEL_CHARGING := true

# Inherit from fog device
$(call inherit-product, device/xiaomi/fog/device.mk)

PRODUCT_NAME := nad_fog
PRODUCT_DEVICE := fog
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi 10C

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

BUILD_FINGERPRINT := Redmi/fog/fog:11/RKQ1.211001.001/V13.0.7.0.RGEMIXM:user/release-keys
