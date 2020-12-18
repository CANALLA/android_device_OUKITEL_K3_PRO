#
#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Release name
PRODUCT_RELEASE_NAME := K3_Pro

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from OUKITEL K3 Pro device
$(call inherit-product, device/OUKITEL/K3_Pro/device.mk)

# Inherit some common Lineage OS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_K3_Pro
PRODUCT_DEVICE := K3_Pro
PRODUCT_BRAND := OUKITEL
PRODUCT_MODEL := K3_Pro
PRODUCT_MANUFACTURER := OUKITEL

# Product characteristics
PRODUCT_AAPT_CONFIG := xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080
TARGET_BOOT_ANIMATION_RES := 1080

# Build info
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="K3_Pro" \
    PRODUCT_NAME="K3_Pro" \
    PRIVATE_BUILD_DESC="full_yk677_lwtg_64-user 9 PPR1.180610.011 20190929.202754 release-keys"

# Fingerprint
BUILD_FINGERPRINT := "OUKITEL/K3_Pro_EEA/K3_Pro:9/PPR1.180610.011/20190930.202553:user/release-keys"

# GMS as per stock
PRODUCT_GMS_CLIENTID_BASE := android-oukitel
