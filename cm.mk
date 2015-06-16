# Boot animatio# Copyright (C) 2014 The CyanogenMod Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from d802 device
$(call inherit-product, device/lge/d802/d802.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/eos/config/common.mk)
$(call inherit-product, vendor/eos/config/common_full_phone.mk)

PRODUCT_NAME := eos_d802
PRODUCT_DEVICE := d802
PRODUCT_MANUFACTURER := lge
PRODUCT_MODEL := LG-d802

#PRODUCT_GMS_CLIENTID_BASE :=

PRODUCT_BRAND := lge
TARGET_VENDOR := lge
TARGET_VENDOR_PRODUCT_NAME := d802
TARGET_VENDOR_DEVICE_NAME := LG-d802
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=LG-d802 PRODUCT_NAME=d802

TARGET_CONTINUOUS_SPLASH_ENABLED := true

## Use the latest approved GMS identifiers unless running a signed build
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=lge/g2_open_com/g2:4.4.2/KOT49I.D80220h/D80220h.1413914494:user/release-keys PRIVATE_BUILD_DESC="g2_open_com-user 4.4.2 KOT49I.D80220h D80220h.1413914494 release-keys"

# Copy device specific prebuilt files.
PRODUCT_COPY_FILES += \
    vendor/eos/prebuilt/common/bootanimations/BOOTANIMATION-1080x1920.zip:system/media/bootanimation.zip




