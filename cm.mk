## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := t0lteatt

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/t0lteatt/device_t0lteatt.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := t0lteatt
PRODUCT_NAME := cm_t0lteatt
PRODUCT_BRAND := samsung
PRODUCT_MODEL := t0lteatt
PRODUCT_MANUFACTURER := samsung
