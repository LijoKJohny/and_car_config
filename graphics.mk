
#copied from build/target/product/emulator.mk and qnx_base.mk


PRODUCT_PACKAGES += \
    android.hardware.graphics.common@1.0-impl \
    android.hardware.graphics.mapper@2.0-impl \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.composer@2.1-impl \
    libdrm \
    libgbm \
    hwcomposer.drm \
    hwcomposer.default \
    gralloc.gbm \
    gralloc.drm \
    libGLES_mesa \
    gallium_dri \
    virtio_gpu_dri \
    libgralloc_drm \
    libfwdlockengine \
    libGLES_android \
    libtxc_dxtn \
    vintf \

PRODUCT_PACKAGES += \
    vndk-sp \
    android.hardware.renderscript@1.0.vndk-sp\
    android.hardware.graphics.allocator@2.0.vndk-sp\
    android.hardware.graphics.mapper@2.0.vndk-sp\
    android.hardware.graphics.common@1.0.vndk-sp\
    libhwbinder.vndk-sp\
    libbase.vndk-sp\
    libcutils.vndk-sp\
    libhardware.vndk-sp\
    libhidlbase.vndk-sp\
    libhidltransport.vndk-sp\
    libutils.vndk-sp\
    libc++.vndk-sp\
    libRS_internal.vndk-sp\
    libRSDriver.vndk-sp\
    libRSCpuRef.vndk-sp\
    libbcinfo.vndk-sp\
    libblas.vndk-sp\
    libft2.vndk-sp\
    libpng.vndk-sp\
    libcompiler_rt.vndk-sp\
    libbacktrace.vndk-sp\
    libunwind.vndk-sp\
    liblzma.vndk-sp\
    libz.vndk-sp\

PRODUCT_PACKAGES += \
    android.hardware.audio@2.0-impl \
    android.hardware.audio@2.0-service \
    android.hardware.audio.effect@2.0-impl \
    android.hardware.broadcastradio@1.0-impl \
    android.hardware.soundtrigger@2.0-impl

PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-impl \
    android.hardware.keymaster@3.0-service

PRODUCT_PACKAGES += \
    android.hardware.gnss@1.0-service \
    android.hardware.gnss@1.0-impl

PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-impl \
    android.hardware.sensors@1.0-service

PRODUCT_PACKAGES += \
    android.hardware.drm@1.0-service \
    android.hardware.drm@1.0-impl

PRODUCT_PACKAGES += \
    android.hardware.power@1.0-service \
    android.hardware.power@1.0-impl

PRODUCT_PACKAGES += \
    camera.device@1.0-impl \
    android.hardware.camera.provider@2.4-service \
    android.hardware.camera.provider@2.4-impl \

#PRODUCT_PACKAGES += \
#    android.hardware.gatekeeper@1.0-impl \
#    android.hardware.gatekeeper@1.0-service

#Light
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-service \
    android.hardware.light@2.0-impl \
    lights.default \

# Bluetooth
PRODUCT_PACKAGES += \
    bluetooth.default \
    audio.a2dp.default \
    libbluetooth_jni \

# Audio
PRODUCT_PACKAGES += \
    audio.primary.default \
    audio.r_submix.default \
    audio.usb.default \
    audio.a2dp.default \


# Wi-Fi
PRODUCT_PACKAGES += \
    libwpa_client \
    hostapd \
    android.hardware.wifi@1.0-service \
    android.hardware.wifi.supplicant@1.0 \
    hostapd.android \
    wpa_supplicant \
    rild \

# Render Script
PRODUCT_PACKAGES += \
    android.hardware.renderscript@1.0-impl \
    libLLVM \
    libRS \
    librs_jni \
    libRSDriver \
    libRS_internal \
    libRSCacheDir \
    libRSCpuRef \
    libRScpp \

# Sensor libraries
PRODUCT_PACKAGES += \
    sensors.hdaps \
    sensors.iio-old \
    sensors.kbd \
    sensors.s103t \
    sensors.w500 \
    sens \
    activity_recognition.iio \
    activity \
    sensors.iio \

# GPS libraries
PRODUCT_PACKAGES += \
    gps.default \
    gps.huawei \

# Camera
PRODUCT_PACKAGES += \
    camera.arm64 \

# Bluetoogh
PRODUCT_PACKAGES += \
    android.hardware.bluetooth@1.0-service.btlinux \
    rtk_hciattach \

# Dumpstate HAL
PRODUCT_PACKAGES += \
    android.hardware.dumpstate@1.0-service 

PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service \


PRODUCT_PACKAGE_OVERLAYS := device/generic/goldfish/overlay

