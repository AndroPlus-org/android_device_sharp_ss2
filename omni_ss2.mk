# Release name
PRODUCT_RELEASE_NAME := ss2

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_PACKAGES += \
	charger_res_images \
	charger

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ss2
PRODUCT_MODEL := Sharp AQUOS S2
PRODUCT_NAME := omni_ss2
PRODUCT_BRAND := Sharp
PRODUCT_MANUFACTURER := Sharp
