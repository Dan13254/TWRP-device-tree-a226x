#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from a22x device
$(call inherit-product, device/samsung/a22x/device.mk)

PRODUCT_DEVICE := a22x
PRODUCT_NAME := omni_a22x
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A226B
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a22xnsxx-user 12 SP1A.210812.016 A226BXXSADXH1 release-keys"

BUILD_FINGERPRINT := samsung/a22xnsxx/a22x:12/SP1A.210812.016/A226BXXSADXH1:user/release-keys
