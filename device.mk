LOCAL_PATH := device/samsung/treltexx

# Flat device tree
#PRODUCT_COPY_FILES += \
#    $(LOCAL_PATH)/dtb.img:dt.img

# Ramdisk
PRODUCT_PACKAGES += \
    init.baseband.rc

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/mixer_paths_0.xml:system/vendor/etc/mixer_paths_0.xml

# Bluetooth
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/bluetooth/bt_vendor.conf:system/vendor/etc/bluetooth/bt_vendor.conf		

# Inherit from trelte-common
$(call inherit-product, device/samsung/trelte-common/device-common.mk)	
	
# Call the proprietary setup
$(call inherit-product, vendor/samsung/treltexx/treltexx-vendor.mk)
