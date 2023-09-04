#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from a04s device
$(call inherit-product, device/samsung/a04s/device.mk)

PRODUCT_DEVICE := a04s
PRODUCT_NAME := omni_a04s
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A047F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a04snsxx-user 13 TP1A.220624.014 A047FXXU4CWE4 release-keys"

BUILD_FINGERPRINT := samsung/a04snsxx/a04s:13/TP1A.220624.014/A047FXXU4CWE4:user/release-keys
