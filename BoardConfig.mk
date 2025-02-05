# Inherit common board flags
include device/samsung/trelte-common/BoardConfigCommon.mk

LOCAL_PATH := device/samsung/treltexx

# Include path
TARGET_SPECIFIC_HEADER_PATH += $(LOCAL_PATH)/include

# Kernel
TARGET_KERNEL_CONFIG := lineage_trelte_defconfig

# Network Routing
TARGET_NEEDS_NETD_DIRECT_CONNECT_RULE := true

# RIL
BOARD_MODEM_TYPE := m7450

# Recovery
TARGET_OTA_ASSERT_DEVICE := trelte,treltexx,tre3g,tre3gxx
