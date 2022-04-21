#
# Copyright (C) 2021 The evolutionOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from apollo device
$(call inherit-product, device/xiaomi/apollo/device.mk)

# Inherit some common evolution stuff.
$(call inherit-product, vendor/evolution/config/common_full_phone.mk)

TARGET_GAPPS_ARCH := arm64
IS_PHONE := true

# Inherit some other EVOLUTION stuff.
WITH_GAPPS := true
EVO_BUILD_TYPE := OFFICIAL
TARGET_INCLUDE_GAPPS := true
TARGET_GAPPS_ARCH := arm64
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_FACE_UNLOCK_SUPPORTED := true
BUILD_USERNAME := AGMAD
BUILD_HOSTNAME := Evolution-X
TARGET_BOOT_ANIMATION_RES := 1080
EVO_SIGNED := true
TARGET_SUPPORTS_QUICK_TAP := true


PRODUCT_CHARACTERISTICS := nosdcard

PRODUCT_NAME := evolution_apollo
PRODUCT_DEVICE := apollo
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Xiaomi Mi 10T

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="apollo_global-user 11 RKQ1.200826.002 V12.5.5.0.RJDMIXM release-keys"

