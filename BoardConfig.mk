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

# Use the non-open-source parts, if they're present
#-include vendor/telxsi/car_tel/BoardConfigVendor.mk

TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_VARIANT := generic
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=

TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL := false
TARGET_NO_RECOVERY := true

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_VARIANT := cortex-a53.a57
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi


TARGET_BOARD_PLATFORM := car_tel
TARGET_USES_64_BIT_BINDER := true

#for fonts
SMALLER_FONT_FOOTPRINT := false
MINIMAL_FONT_FOOTPRINT := false


#BT
BOARD_HAVE_BLUETOOTH := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/generic/common/bluetooth

#Audio
BOARD_USES_GENERIC_AUDIO := true
BOARD_USES_ALSA_AUDIO := true

#Graphics
BOARD_USES_DRM_HWCOMPOSER := true
LIBGRALLOC := gralloc.gbm
USE_OPENGL_RENDERER := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS ?= 3

#Camera
USE_CAMERA_STUB := false

# Build OpenGLES emulation host and guest libraries. May be not required.
#BUILD_EMULATOR_OPENGL := true

BOARD_USE_LEGACY_UI := true

# Android images
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_FLASH_BLOCK_SIZE := 512
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2147483648 #2.1 GB
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2147483648 #2.1 GB
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_DTBIMAGE_PARTITION_SIZE := 524288
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := true
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
TARGET_KERNEL_SOURCE := device/generic/kernel
TARGET_KERNEL_CONFIG := android_car_tel_defconfig
BOARD_GPU_DRIVERS ?= virgl swrast nouveau vmwgfx

DEVICE_MATRIX_FILE   := device/generic/goldfish/compatibility_matrix.xml
BOARD_SEPOLICY_DIRS += build/target/board/generic/sepolicy

#wifi
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION := VER_2_1_DEVEL

#GPS
BOARD_HAS_GPS_HARDWARE := true

# Disable Jack build system due deprecated status (https://source.android.com/source/jack)
ANDROID_COMPILE_WITH_JACK := false




