ARCHS = arm64 arm64e
include $(THEOS)/makefiles/common.mk
GO_EASY_ON_ME = 1

TWEAK_NAME = VibrantClock

VibrantClock_FILES = Tweak.xm
VibrantClock_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
