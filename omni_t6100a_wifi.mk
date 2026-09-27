#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from t6100a_wifi device
$(call inherit-product, device/lenovo/t6100a_wifi/device.mk)

PRODUCT_DEVICE := t6100a_wifi
PRODUCT_NAME := omni_t6100a_wifi
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := t6100a_wifi
PRODUCT_MANUFACTURER := lenovo

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="TB310FU-user 12 SP1A.210812.016 TB310FU_USR_S000915_2607032029_1rctb8786p164P33_ROW release-keys"

BUILD_FINGERPRINT := Lenovo/TB310FU/TB310FU:12/SP1A.210812.016/S000915_260703_ROW:user/release-keys
