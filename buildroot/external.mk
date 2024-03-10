BR2_GLOBAL_PATCH_DIR=$(BR2_EXTERNAL_BOSONS3DEV_PATH)/package_patches
include $(sort $(wildcard $(BR2_EXTERNAL_BOSONS3DEV_PATH)/package/*/*.mk))