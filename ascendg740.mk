# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk) # If you are building for a phone

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)  # If you are building for a tablet

# Inherit device configuration
$(call inherit-product, device/huawei/ascendg740/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := Ascend G740
PRODUCT_DEVICE := ascendg740
PRODUCT_BRAND := Huawei
PRODUCT_MODEL := G740-L00
PRODUCT_MANUFACTURER := Huawei

# If needed to overide these props
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="" \
    PRIVATE_BUILD_DESC=""
    
