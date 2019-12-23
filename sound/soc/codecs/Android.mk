ifeq (heart,$(findstring heart,$(TARGET_PRODUCT)))
DLKM_DIR := vendor/cirrus/modules/
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := cirrus_madera.ko
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(KERNEL_MODULES_OUT)
LOCAL_MODULE_DEBUG_ENABLE := true
include $(DLKM_DIR)/AndroidKernelModule.mk

include $(CLEAR_VARS)
LOCAL_MODULE := cirrus_cs47l35.ko
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(KERNEL_MODULES_OUT)
LOCAL_MODULE_DEBUG_ENABLE := true
include $(DLKM_DIR)/AndroidKernelModule.mk

include $(CLEAR_VARS)
LOCAL_MODULE := cirrus_cs35l41_i2c.ko
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(KERNEL_MODULES_OUT)
LOCAL_MODULE_DEBUG_ENABLE := true
include $(DLKM_DIR)/AndroidKernelModule.mk

include $(CLEAR_VARS)
LOCAL_MODULE := cirrus_cs35l41_spi.ko
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(KERNEL_MODULES_OUT)
LOCAL_MODULE_DEBUG_ENABLE := true
include $(DLKM_DIR)/AndroidKernelModule.mk

else
endif
