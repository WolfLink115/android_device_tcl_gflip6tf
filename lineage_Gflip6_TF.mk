#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from Gflip6_TF device
$(call inherit-product, device/tcl/Gflip6_TF/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_DEVICE := Gflip6_TF
PRODUCT_NAME := lineage_Gflip6_TF
PRODUCT_BRAND := TCL
PRODUCT_MODEL := T408DL
PRODUCT_MANUFACTURER := tcl

PRODUCT_GMS_CLIENTID_BASE := android-tcl

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="T408DL-user 11 RP1A.200720.011 KEFH release-keys" \
    BuildFingerprint=TCL/T408DL/Gflip6_TF:11/RP1A.200720.011/KEFH:user/release-keys

# TWRP
ifeq ($(WITH_TWRP),true)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.twrp.bootloader_portrait=false \
    ro.twrp.bootloader_landscape=false \
    ro.twrp.bootloader_rtl=false \
    ro.twrp.theme=watch \
    ro.twrp.lcd_density=160 \
    ro.twrp.screen_width=240 \
    ro.twrp.screen_height=320
endif
