$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, vendor/twrp/config/common.mk)

PRODUCT_PLATFORM := msm8998
DEVICE_PATH := device/sony/maple
COMMON_PATH := device/sony/yoshino-common
PRODUCT_SOONG_NAMESPACES += $(DEVICE_PATH) $(COMMON_PATH)
PRODUCT_PACKAGES += init.qcom.recovery.rc init.recovery.usb.rc
$(call inherit-product, $(COMMON_PATH)/device-common.mk)
PRODUCT_OTA_ENFORCE_VINTF_KERNEL_REQUIREMENTS := false

PRODUCT_NAME := twrp_maple
PRODUCT_DEVICE := maple
PRODUCT_SHIPPING_API_LEVEL := 25
PRODUCT_BRAND := Sony
PRODUCT_MODEL := G8141
PRODUCT_MANUFACTURER := Sony
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=maple PRIVATE_BUILD_DESC="G8141-user 9 47.2.A.10.107 172320177 release-keys"
BUILD_FINGERPRINT := Sony/G8141/G8141:9/47.2.A.10.107/172320177:user/release-keys
PRODUCT_PROPERTY_OVERRIDES += ro.vendor.usb.pid_suffix=1F1 vendor.usb.rndis.func.name=gsi
