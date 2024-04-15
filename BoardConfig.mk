DEVICE_PATH := device/asus/croissant
BOARD_VENDOR := asus

BUILD_BROKEN_DUP_RULES := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true



#ARCHITECTURE
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic 

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic

#BOARD SEPOLICY
BOARD_SEPOLICY_VERS=30.0

#BOOTLOADER 
TARGET_BOOTLOADER_BOARD_NAME := croissant
TARGET_NO_BOOTLOADER := true

# Boot animation
TARGET_SCREEN_HEIGHT := 155.40
TARGET_SCREEN_WIDTH := 75.20

#FSTAB
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom 

# HIDL
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/manifest.xml
DEVICE_MATRIX_FILE := $(DEVICE_PATH)/compatibility_matrix.xml
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE := $(DEVICE_PATH)/framework_compatibility_matrix.xml

#KERNEL
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_TAGS_OFFSET := 0x00008000
BOARD_RAMDISK_OFFSET := 0x01000000 
BOARD_TAGS_OFFSET := 0x00000100
BOARD_KERNEL_IMAGE_NAME := zImage

TARGET_PREBUILT_KERNEL := device/asus/croissant/

BOARD_KERNEL_CMDLINE := console=ttyMSM0,115200,n8 
BOARD_KERNEL_CMDLINE := androidboot.console=ttyMSM0 
BOARD_KERNEL_CMDLINE := earlycon=msm_serial_dm,0xc170000 
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom user_debug=31 
BOARD_KERNEL_CMDLINE := msm_rtb.filter=0x37 ehci-hcd.park=3 
BOARD_KERNEL_CMDLINE := lpm_levels.sleep_disabled=1 
BOARD_KERNEL_CMDLINE := sched_enable_hmp=1 
BOARD_KERNEL_CMDLINE := sched_enable_power_aware=1 
BOARD_KERNEL_CMDLINE := service_locator.enable=1 
BOARD_KERNEL_CMDLINE := swiotlb=1 
BOARD_KERNEL_CMDLINE := androidboot.configfs=true 
BOARD_KERNEL_CMDLINE := androidboot.usbcontroller=a800000.dwc3 


#PARTITION
# Partitions - Boot
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_FLASH_BLOCK_SIZE := 262144

# Partitions - Cache
BOARD_CACHEIMAGE_PARTITION_SIZE := 134217728
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4

# Partitions - Recovery
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432

# Partitions - System
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 4831838208
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4

# Partitions - Userdata
BOARD_USERDATAIMAGE_PARTITION_SIZE := 56465112576
TARGET_USERIMAGES_USE_EXT4 := true

#SEPOLICY
SYSTEM_EXT_PRIVATE_SEPOLICY_DIR += device/qcom/sepolicy/private
SYSTEM_EXT_PRIVATE_SEPOLICY_DIR += device/qcom/sepolicy/public

#VINTF
PRODUCT_ENFORCE_VINTF_MANIFEST=false

-include vendor/asus/croissant/BoardConfigVendor.mk
