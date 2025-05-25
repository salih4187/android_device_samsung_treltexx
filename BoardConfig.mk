# Inherit common board flags
include device/samsung/trelte-common/BoardConfigCommon.mk

LOCAL_PATH := device/samsung/trelte

# Include path
TARGET_SPECIFIC_HEADER_PATH += $(LOCAL_PATH)/include

# Kernel
TARGET_KERNEL_CONFIG := lineage_trelte_defconfig

# Properties
TARGET_SYSTEM_PROP += $(LOCAL_PATH)/system.prop

# RIL
BOARD_MODEM_TYPE := m7450

# Recovery
TARGET_OTA_ASSERT_DEVICE := trelte,treltexx,tre3g,tre3gxx

# inherit from the proprietary version
include vendor/samsung/trelte/BoardConfigVendor.mk
