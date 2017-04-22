# Kernel
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
TARGET_COMPILE_WITH_MSM_KERNEL := true
TARGET_KERNEL_CONFIG := marlin_defconfig
TARGET_KERNEL_SOURCE := kernel/google/marlin
Contact GitHub API Training Shop Blog About

# Time services
BOARD_USES_QC_TIME_SERVICES := true

# Sepolicy
BOARD_SEPOLICY_DIRS += device/google/marlin/sepolicy/verizon
