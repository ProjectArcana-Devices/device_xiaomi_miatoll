#
# Copyright (C) 2020 The ArrowOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from miatoll  device
$(call inherit-product, device/xiaomi/miatoll/device.mk)

# Inherit some common ArcaneOS stuff.
$(call inherit-product, vendor/aosp/config/common.mk)

# Prebuilt apps
$(call inherit-product-if-exists, vendor/prebuilt-apps/config.mk)

# Bootanimation Resolution
TARGET_BOOT_ANIMATION_RES := 1080

# Device identifier
PRODUCT_NAME := aosp_miatoll
PRODUCT_DEVICE := miatoll
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Miatoll
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Inherit some props from Arcana
ARCANA_OFFICIAL := true
ARCANA_DEVICE := miatoll
ARCANA_MAINTAINER := HaSSaN
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_BUILD_GRAPHENEOS_CAMERA := true
PREBUILT_LAWNCHAIR := true
COPY_APN_SYSTEM := true

# Fingerprint

BUILD_FINGERPRINT := google/raven/raven:12/SP2A.220405.004/8233519:user/release-keys

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="raven-user 12 SP2A.220405.004 8233519 release-keys"

