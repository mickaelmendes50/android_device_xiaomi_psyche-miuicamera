# android_device_xiaomi_psyche-miuicamera

Prebuilt stock MIUI Camera for Xiaomi 12X (psyche), to include in custom ROM builds.

Extracted from psyche MIUI package (refer proprietary-files.txt for version).

### How to use?

1. Clone this repo to `device/xiaomi/psyche-miuicamera`

2. Inherit it from `device.mk` in device tree:

```
# Camera
$(call inherit-product-if-exists, device/xiaomi/psyche-miuicamera/config.mk)
```

3. Ensure that required properties are set:

```
PRODUCT_SYSTEM_PROPERTIES += \
    persist.vendor.camera.privapp.list=org.codeaurora.snapcam,com.android.camera \
    vendor.camera.aux.packagelist=org.codeaurora.snapcam,com.android.camera
```
