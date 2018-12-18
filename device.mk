#
# Copyright 2014 The Android Open-Source Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.secure=0 \
    ro.allow.mock.location=1 \
    ro.debuggable=1 \
    ro.arch=arm64 \
    ro.maxcpu=4 \
    ro.product.model=Hypervisor \
    ro.product.manufacturer=Generic \
    ro.setupwizard.mode=DISABLED \
    persist.rtc_local_time=1 \
    security.perf_harden=0 \
    ro.hardware.gralloc=gbm \
    ro.hardware.hwcomposer=drm \
    ro.sf.lcd_density=160 \
    debug.sf.no_hw_vsync=1 \
    hwc.drm.use_framebuffer_target=1 \
    hwc.drm.use_overlay_planes=0 \
    ro.zygote=zygote64_32 \
#    dalvik.vm.usejit=true \
#    dalvik.vm.usejitprofiles=true \
#    debug.atrace.tags.enableflags=0  \
#    ro.dalvik.vm.native.bridge=libnb.so \
#    dalvik.vm.appimageformat=lz4 \


# Init RC files
PRODUCT_COPY_FILES += \
    device/generic/telxsi/car_tel/fstab.car_tel:root/fstab.car_tel \
    device/generic/telxsi/car_tel/init.car_tel.rc:root/init.car_tel.rc \
    device/generic/telxsi/car_tel/ueventd.car_tel.rc:root/ueventd.car_tel.rc \
    device/generic/telxsi/car_tel/modules.blacklist:system/etc/modules.blacklist \

# copied from aosp_arm64.mk
PRODUCT_PROPERTY_OVERRIDES += \
	rild.libpath=/vendor/lib64/libreference-ril.so

# copied from build/target/product/aosp_base_telephony.mk
PRODUCT_PACKAGES += \
    messaging

# copied from build/target/product/telephony.mk
PRODUCT_PACKAGES += \
    CarrierConfig \
    CarrierDefaultApp \
    Dialer \
    CallLogBackup \
    CellBroadcastReceiver \
    EmergencyInfo \
    rild

# copied from build/target/product/full_base_telephony.mk
PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.com.android.dataroaming=true

PRODUCT_COPY_FILES += \
    device/generic/goldfish/data/etc/apns-conf.xml:system/etc/apns-conf.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# copied from build/target/product/full_base.mk
PRODUCT_PACKAGES += \
    libfwdlockengine \
    OpenWnn \
    libWnnEngDic \
    libWnnJpnDic \
    libwnndict \
    WAPPushManager

PRODUCT_PACKAGES += \
    Galaxy4 \
    HoloSpiralWallpaper \
    LiveWallpapers \
    LiveWallpapersPicker \
    MagicSmokeWallpapers \
    NoiseField \
    PhaseBeam \
    PhotoTable

# Additional settings used in all AOSP builds
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Ring_Synth_04.ogg \
    ro.config.notification_sound=pixiedust.ogg

# Put en_US first in the list, so make it default.
PRODUCT_LOCALES := en_US

# copied from build/target/product/generic_no_telephony.mk
PRODUCT_PACKAGES += \
    Bluetooth \
    BluetoothMidiService \
    Camera2 \
    Gallery2 \
    Music \
    MusicFX \
    NfcNci \
    OneTimeInitializer \
    Provision \
    SystemUI \
    SysuiDarkThemeOverlay \
    EasterEgg \
    WallpaperCropper

PRODUCT_PACKAGES += \
    clatd \
    clatd.conf \
    pppd \
    screenrecord

PRODUCT_PACKAGES += \
    librs_jni \
    libvideoeditor_jni \
    libvideoeditor_core \
    libvideoeditor_osal \
    libvideoeditor_videofilters \
    libvideoeditorplayer \

PRODUCT_PACKAGES += \
    audio.primary.arm64 \
    audio.primary.hdmi \
    local_time.default \
    vibrator.default \
    power.arm64 \

PRODUCT_COPY_FILES += \
    frameworks/av/media/libeffects/data/audio_effects.conf:system/etc/audio_effects.conf

PRODUCT_PROPERTY_OVERRIDES += \
    ro.carrier=unknown

# copied from build/target/board/generic_arm64/device.mk
PRODUCT_PROPERTY_OVERRIDES += \
    ro.ril.hsxpa=1 \
    ro.ril.gprsclass=10

PRODUCT_COPY_FILES += \
    device/generic/goldfish/camera/media_profiles.xml:system/etc/media_profiles.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml \
    device/generic/goldfish/camera/media_codecs.xml:system/etc/media_codecs.xml \
    frameworks/av/media/libstagefright/data/media_codecs_ffmpeg.xml:system/etc/media_codecs_ffmpeg.xml \

# Stagefright FFMPEG plugins
PRODUCT_PACKAGES += \
    libffmpeg_extractor \
    libffmpeg_omx \
    media_codecs_ffmpeg.xml \

# For ffmpeg
PRODUCT_PROPERTY_OVERRIDES += \
    media.sf.omx-plugin=libffmpeg_omx.so \
    media.sf.extractor-plugin=libffmpeg_extractor.so \

# Get some sounds
$(call inherit-product-if-exists, frameworks/base/data/sounds/AllAudio.mk)

# Get the alsa files
$(call inherit-product-if-exists,hardware/libaudio/alsa.mk)

# Get the TTS language packs
$(call inherit-product-if-exists, external/svox/pico/lang/all_pico_languages.mk)

# Get a list of languages.
$(call inherit-product, $(SRC_TARGET_DIR)/product/locales_full.mk)

# Kernel
$(call inherit-product-if-exists, $(LOCAL_PATH)/modules.mk)

# Adjust the Dalvik heap to be appropriate for a tablet. copied from build/target/board/generic_arm64/device.mk
$(call inherit-product-if-exists, frameworks/base/build/tablet-dalvik-heap.mk)
$(call inherit-product-if-exists, frameworks/native/build/tablet-dalvik-heap.mk)

# Graphics
$(call inherit-product-if-exists, $(LOCAL_PATH)/graphics.mk)

#$(call inherit-product, $(LOCAL_PATH)/core_car_tel.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core.mk)


