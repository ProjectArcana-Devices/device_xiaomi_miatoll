#
# Copyright (C) 2020 The ArrowOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from miatoll  device
$(call inherit-product, device/xiaomi/miatoll/device.mk)

# Inherit some common riceDroid stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Prebuilt apps
$(call inherit-product-if-exists, vendor/prebuilt-apps/config.mk)

# Bootanimation Resolution
TARGET_BOOT_ANIMATION_RES := 1080

# Device identifier
PRODUCT_NAME := lineage_miatoll
PRODUCT_DEVICE := miatoll
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Miatoll
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# riceDroic stuff with GApps

RICE_MAINTAINER := HaSSaN
TARGET_GAPPS_ARCH := arm64
TARGET_ENABLE_BLUR := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := true
WITH_GAPPS := true

# Fingerprint

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="raven-user 12 SQ3A.220605.009.B1 8650216 release-keys"

BUILD_FINGERPRINT := google/raven/raven:12/SQ3A.220605.009.B1/8650216:user/release-keys
