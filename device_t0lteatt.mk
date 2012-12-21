$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/samsung/t0lteatt/t0lteatt-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/t0lteatt/overlay

LOCAL_PATH := device/samsung/t0lteatt
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel \
    $(LOCAL_PATH)/lpm.rc:recovery/root/lpm.rc \
    $(LOCAL_PATH)/fstab.smdk4x12:recovery/root/fstab.smdk4x12 \

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_t0lteatt
PRODUCT_DEVICE := t0lteatt
