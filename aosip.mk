# Copyright (C) 2019 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

$(call inherit-product, device/samsung/j4primelte/device.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common AOSIP stuff.
$(call inherit-product, vendor/aosip/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosip_j4primelte
PRODUCT_DEVICE := j4primelte
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := Galaxy J4+
PRODUCT_MANUFACTURER := Samsung

# GApps targets
TARGET_GAPPS_ARCH := arm
IS_PHONE := true

# GApps
$(call inherit-product-if-exists, vendor/gapps/config.mk)

# PixelStyle
$(call inherit-product-if-exists, vendor/pixelstyle/config.mk)

PRODUCT_GMS_CLIENTID_BASE := android-samsung

BUILD_FINGERPRINT := "samsung/j4primeltedx/j4primelte:9/PPR1.180610.011/J415FXXU2BSDM:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="j4primeltedx-user 9 PPR1.180610.011 J415FXXU2BSDM release-keys"
