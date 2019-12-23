ifeq (heart,$(findstring heart,$(TARGET_PRODUCT)))
DLKM_DIR := vendor/cirrus/modules/
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := gpio-madera.ko
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(KERNEL_MODULES_OUT)
include $(DLKM_DIR)/AndroidKernelModule.mk
else
endif
