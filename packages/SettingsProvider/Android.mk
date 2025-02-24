LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := $(call all-java-files-under, src) \
    src/com/android/providers/settings/EventLogTags.logtags

LOCAL_JAVA_LIBRARIES := telephony-common ims-common
LOCAL_STATIC_JAVA_LIBRARIES := junit legacy-android-test \
    android-support-annotations \
    android-support-v4 \
    android-support-v7-appcompat \
    android-support-v7-recyclerview \
    android-support-v7-preference \
    android-support-v14-preference \
    org.lineageos.platform.internal

LOCAL_PACKAGE_NAME := SettingsProvider
LOCAL_CERTIFICATE := platform
LOCAL_PRIVILEGED_MODULE := true

ifndef LOCAL_JACK_ENABLED
LOCAL_PROGUARD_ENABLED := disabled
LOCAL_DX_FLAGS := --multi-dex
endif

include $(BUILD_PACKAGE)

########################
include $(call all-makefiles-under,$(LOCAL_PATH))
