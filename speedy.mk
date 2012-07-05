#
# Copyright (C) 2009 The Android Open Source Project
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

# The gps config appropriate for this device
PRODUCT_COPY_FILES += \
    device/htc/speedy/prebuilt/system/etc/gps.conf:system/etc/gps.conf

## (1) First, the most specific values, i.e. the aspects that are specific to GSM

PRODUCT_COPY_FILES += \
    device/htc/speedy/prebuilt/root/init.speedy.rc:root/init.speedy.rc \
    device/htc/speedy/prebuilt/root/init.msm7x30.usb.rc:root/init.msm7x30.usb.rc \
    device/htc/speedy/prebuilt/root/ueventd.speedy.rc:root/ueventd.speedy.rc

## (2) Also get non-open-source GSM-specific aspects if available
$(call inherit-product-if-exists, vendor/htc/speedy/speedy-vendor.mk)

## (3)  Finally, the least specific parts, i.e. the non-GSM-specific aspects
PRODUCT_PROPERTY_OVERRIDES += \
	ro.com.google.clientidbase=android-sprint-us \
	ro.com.google.locationfeatures=1 \
	ro.cdma.home.operator.numeric=310120 \
	ro.cdma.home.operator.alpha=Sprint \
	ro.setupwizard.enable_bypass=1 \
        dalvik.vm.lockprof.threshold=500 \
        dalvik.vm.dexopt-flags=m=y

DEVICE_PACKAGE_OVERLAYS += device/htc/speedy/overlay

PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml

# Media config
PRODUCT_COPY_FILES += \
    device/htc/msm7x30-common/media_profiles.xml:system/etc/media_profiles.xml

# Misc
PRODUCT_PACKAGES += \
    camera.msm7x30 \
    sensors.speedy \
    lights.speedy \
    gps.speedy

# Temporary hack
ADDITIONAL_DEFAULT_PROPERTIES += \
    persist.service.adb.enable=1 \
    persist.sys.root_access=3

# Input config files
PRODUCT_COPY_FILES += \
    device/htc/speedy/prebuilt/system/usr/idc/atmel-touchscreen.idc:system/usr/idc/atmel-touchscreen.idc \
    device/htc/speedy/prebuilt/system/usr/idc/qwerty.idc:system/usr/idc/qwerty.idc \
    device/htc/speedy/prebuilt/system/usr/idc/qwerty2.idc:system/usr/idc/qwerty2.idc \
    device/htc/speedy/prebuilt/system/usr/idc/speedy-keypad.idc:system/usr/idc/speedy-keypad.idc

# Keylayouts
PRODUCT_COPY_FILES += \
    device/htc/speedy/prebuilt/system/usr/keychars/Generic.kcm:system/usr/keychars/Generic.kcm \
    device/htc/speedy/prebuilt/system/usr/keychars/qwerty.kcm:system/usr/keychars/qwerty.kcm \
    device/htc/speedy/prebuilt/system/usr/keychars/qwerty.kcm.bin:system/usr/keychars/qwerty.kcm.bin \
    device/htc/speedy/prebuilt/system/usr/keychars/qwerty2.kcm:system/usr/keychars/qwerty2.kcm \
    device/htc/speedy/prebuilt/system/usr/keychars/qwerty2.kcm.bin:system/usr/keychars/qwerty2.kcm.bin \
    device/htc/speedy/prebuilt/system/usr/keychars/speedy-keypad.kcm:system/usr/keychars/speedy-keypad.kcm \
    device/htc/speedy/prebuilt/system/usr/keychars/speedy-keypad.kcm.bin:system/usr/keychars/speedy-keypad.kcm.bin \
    device/htc/speedy/prebuilt/system/usr/keychars/Virtual.kcm:system/usr/keychars/Virtual.kcm \
    device/htc/speedy/prebuilt/system/usr/keychars/vision-keypad.kcm.bin:system/usr/keychars/vision-keypad.kcm.bin \
    device/htc/speedy/prebuilt/system/usr/keylayout/atmel-touchscreen.kl:system/usr/keylayout/atmel-touchscreen.kl \
    device/htc/speedy/prebuilt/system/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/htc/speedy/prebuilt/system/usr/keylayout/Generic.kl:system/usr/keylayout/Generic.kl \
    device/htc/speedy/prebuilt/system/usr/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
    device/htc/speedy/prebuilt/system/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    device/htc/speedy/prebuilt/system/usr/keylayout/speedy-keypad.kl:system/usr/keylayout/speedy-keypad.kl \
    device/htc/speedy/prebuilt/system/usr/keylayout/Vendor_05ac_Product_0239.kl:system/usr/keylayout/Vendor_05ac_Product_0239.kl \
    device/htc/speedy/prebuilt/system/usr/keylayout/Vendor_22b8_Product_093d.kl:system/usr/keylayout/Vendor_22b8_Product_093d.kl \
    device/htc/speedy/prebuilt/system/usr/keylayout/Vendor_045e_Product_028e.kl:system/usr/keylayout/Vendor_045e_Product_028e.kl \
    device/htc/speedy/prebuilt/system/usr/keylayout/Vendor_046d_Product_c216.kl:system/usr/keylayout/Vendor_046d_Product_c216.kl \
    device/htc/speedy/prebuilt/system/usr/keylayout/Vendor_046d_Product_c294.kl:system/usr/keylayout/Vendor_046d_Product_c294.kl \
    device/htc/speedy/prebuilt/system/usr/keylayout/Vendor_046d_Product_c299.kl:system/usr/keylayout/Vendor_046d_Product_c299.kl \
    device/htc/speedy/prebuilt/system/usr/keylayout/Vendor_046d_Product_c532.kl:system/usr/keylayout/Vendor_046d_Product_c532.kl \
    device/htc/speedy/prebuilt/system/usr/keylayout/Vendor_054c_Product_0268.kl:system/usr/keylayout/Vendor_054c_Product_0268.kl \
    device/htc/speedy/prebuilt/system/usr/keylayout/vision-keypad.kl:system/usr/keylayout/vision-keypad.kl

# Firmware
PRODUCT_COPY_FILES += \
    device/htc/speedy/prebuilt/vendor/firmware/default.acdb:system/etc/firmware/default.acdb \
    device/htc/speedy/prebuilt/vendor/firmware/default_mfg.acdb:system/etc/firmware/default_mfg.acdb \
    device/htc/speedy/prebuilt/vendor/firmware/default_org.acdb:system/etc/firmware/default_org.acdb

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# speedy uses high-density artwork where available
PRODUCT_LOCALES += en
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

PRODUCT_COPY_FILES += \
    device/htc/speedy/prebuilt/system/etc/vold.fstab:system/etc/vold.fstab \
    device/htc/speedy/prebuilt/system/etc/apns-conf.xml:system/etc/apns-conf.xml

TARGET_PREBUILT_KERNEL := device/htc/speedy/prebuilt/root/kernel

ifneq ($(TARGET_PREBUILT_KERNEL),)

# Local Kernel
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# Kernel Modules
PRODUCT_COPY_FILES += $(shell \
    find device/htc/speedy/prebuilt/system/lib/modules -name '*.ko' \
    | sed -r 's/^\/?(.*\/)([^/ ]+)$$/\1\2:system\/lib\/modules\/\2/' \
    | tr '\n' ' ')

endif

$(call inherit-product-if-exists, vendor/htc/speedy/speedy-vendor.mk)

# Script to signal boot completion for init.d
PRODUCT_COPY_FILES += \
    device/htc/speedy/prebuilt/system/etc/init.d/100complete:system/etc/init.d/100complete

# Init post-boot script
PRODUCT_COPY_FILES += \
    device/htc/speedy/prebuilt/system/etc/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh

# common msm7x30 configs
$(call inherit-product, device/htc/msm7x30-common/msm7x30.mk)

# media profiles and capabilities spec
$(call inherit-product, device/htc/speedy/media_a1026.mk)

# htc audio settings
$(call inherit-product, device/htc/speedy/media_htcaudio.mk)

# stuff common to all HTC phones
$(call inherit-product, device/htc/common/common.mk)

$(call inherit-product, build/target/product/full_base_telephony.mk)

# Inherit Qualcomm prebuilt libraries
$(call inherit-product-if-exists, vendor/qcom/qcom-vendor-blobs.mk)

# USB
ADDITIONAL_DEFAULT_PROPERTIES += persist.sys.usb.config=mass_storage
