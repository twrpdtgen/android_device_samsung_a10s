#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from a10s device
$(call inherit-product, device/samsung/a10s/device.mk)

PRODUCT_DEVICE := a10s
PRODUCT_NAME := omni_a10s
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A107F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a10sxx-user 9 PPR1.180610.011 A107FXXU5ATA9 release-keys"

BUILD_FINGERPRINT := samsung/a10sxx/a10s:9/PPR1.180610.011/A107FXXU5ATA9:user/release-keys
