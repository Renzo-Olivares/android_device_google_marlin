#
# Copyright 2015 The Android Open Source Project
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
#

# Sample: This is where we'd set a backup provider if we had one
# $(call inherit-product, device/sample/products/backup_overlay.mk)

# Provide meaningful APN configuration
PRODUCT_COPY_FILES := device/google/marlin/apns-full-conf.xml:system/etc/apns-conf.xml

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

-include device/google/marlin/marlin/device-shared.mk

PRODUCT_NAME := aosp_marlin
PRODUCT_DEVICE := marlin
PRODUCT_BRAND := Android
PRODUCT_MODEL := AOSP on msm8996
PRODUCT_MANUFACTURER := google
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=marlin \
    PRODUCT_BRAND=google \
    PRODUCT_MANUFACTURER=HTC \
    PRODUCT_MODEL=Pixel XL \
    BUILD_FINGERPRINT="google/marlin/marlin:7.1.2/NHG47K/3865390:user/release-keys" \
    PRIVATE_BUILD_DESC="marlin-user 7.1.2 NHG47K 3865390 release-keys"

PRODUCT_COPY_FILES += device/google/marlin/fstab.aosp_common:root/fstab.marlin

$(call inherit-product, device/google/marlin/device-marlin.mk)
$(call inherit-product-if-exists, vendor/google/marlin/device-vendor-marlin.mk)

PRODUCT_PACKAGES += \
    Launcher3
