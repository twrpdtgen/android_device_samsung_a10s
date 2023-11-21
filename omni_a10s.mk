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

# Inherit from a10s device
$(call inherit-product, device/samsung/a10s/device.mk)

PRODUCT_DEVICE := a10s
PRODUCT_NAME := omni_a10s
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A107F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="twrp_a10s-eng 16.1.0 RQ1A.210205.004 eng.runner.20231111.141000 test-keys"

BUILD_FINGERPRINT := samsung/twrp_a10s/a10s:16.1.0/RQ1A.210205.004/runner11111408:eng/test-keys
