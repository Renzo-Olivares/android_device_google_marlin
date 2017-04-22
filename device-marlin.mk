#
# Copyright (C) 2016 The Android Open-Source Project
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

# This file includes all definitions that apply to ALL marlin devices
#
# Everything in this directory will become public

PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := 560dpi
PRODUCT_AAPT_PREBUILT_DPI := xxxhdpi xxhdpi xhdpi hdpi

-include device/google/marlin/device-common.mk

# Overlay
DEVICE_PACKAGE_OVERLAYS += device/google/marlin/marlin/overlay

# display
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=560

# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.vc_call_vol_steps=7

# HWUI cache sizes
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hwui.texture_cache_size=72 \
    ro.hwui.layer_cache_size=48 \
    ro.hwui.path_cache_size=32

PRODUCT_COPY_FILES += \
    device/google/marlin/init.common.rc:root/init.marlin.rc \
    device/google/marlin/init.common.usb.rc:root/init.marlin.usb.rc \
    device/google/marlin/fstab.common:root/fstab.marlin \
    device/google/marlin/ueventd.common.rc:root/ueventd.marlin.rc \
    device/google/marlin/init.recovery.common.rc:root/init.recovery.marlin.rc

# Sensor hub init script
PRODUCT_COPY_FILES += \
    device/google/marlin/init.common.nanohub.rc:root/init.marlin.nanohub.rc

# Sensor packages
PRODUCT_PACKAGES += \
    sensors.marlin \
    activity_recognition.marlin

# NFC packages
PRODUCT_PACKAGES += \
    nfc_nci.marlin

PRODUCT_COPY_FILES += \
    device/google/marlin/nfc/libnfc-nxp.marlin.conf:system/etc/libnfc-nxp.conf

# Led packages
PRODUCT_PACKAGES += \
    lights.marlin

# Thermal packages
PRODUCT_PACKAGES += \
    thermal.marlin

# VR packages
PRODUCT_PACKAGES += \
    vr.marlin

## Device identifier. This must come after all inclusions
PRODUCT_NAME := aosp_marlin
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel XL
TARGET_MANUFACTURER := HTC
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=marlin \
    BUILD_FINGERPRINT="google/marlin/marlin:7.1.2/NHG47K/3865390:user/release-keys" \
    PRIVATE_BUILD_DESC="marlin-user 7.1.2 NHG47K 3865390 release-keys"
