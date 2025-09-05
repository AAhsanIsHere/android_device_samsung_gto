#
# Copyright (C) 2018-2021 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)

# Inherit from gto device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_tablet.mk)

PRODUCT_CHARACTERISTICS := tablet

PRODUCT_BRAND := samsung
PRODUCT_DEVICE := gto
PRODUCT_MANUFACTURER := samsung
PRODUCT_NAME := lineage_gto
PRODUCT_MODEL := SM-T295

PRODUCT_SYSTEM_NAME := gtoxx

PRODUCT_GMS_CLIENTID_BASE := android-samsung

TARGET_VENDOR := samsung
TARGET_VENDOR_PRODUCT_NAME := gto

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="gtoxx-user 11 RP1A.200720.012 T295XXU3BUA5 release-keys" \
    BuildFingerprint="samsung/gtoxx/gto:11/RP1A.200720.012/T295XXU3BUA5:user/release-keys"
