#
# Copyright (C) 2023 Paranoid Android
#
# SPDX-License-Identifier: Apache-2.0
#

# Namespace
PRODUCT_SOONG_NAMESPACES += \
    device/xiaomi/psyche-miuicamera

# Permissions
PRODUCT_COPY_FILES += \
    device/xiaomi/psyche-miuicamera/configs/permissions/default-permissions-miuicamera.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/default-permissions/default-permissions-miuicamera.xml \
    device/xiaomi/psyche-miuicamera/configs/permissions/miuicamera-hiddenapi-package-whitelist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/miuicamera-hiddenapi-package-whitelist.xml \
    device/xiaomi/psyche-miuicamera/configs/permissions/privapp-permissions-miuicamera.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-miuicamera.xml

# Device-Features
PRODUCT_COPY_FILES += \
     device/xiaomi/psyche-miuicamera/configs/device_features/psyche.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/device_features/psyche.xml \
     device/xiaomi/psyche-miuicamera/configs/device_features/psyche.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/device_features/psyche.xml

# Properties
PRODUCT_SYSTEM_PROPERTIES += \
    ro.com.google.lens.oem_camera_package=com.android.camera \
    ro.miui.notch=1 \
    ro.product.mod_device=psyche

# Sepolicy
BOARD_VENDOR_SEPOLICY_DIRS += \
    device/xiaomi/psyche-miuicamera/sepolicy/vendor

$(call inherit-product, vendor/xiaomi/psyche-miuicamera/psyche-miuicamera-vendor.mk)
