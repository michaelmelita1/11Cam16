FINALPACKAGE=1
ARCHS = arm64
TARGET = iphone:14.5
INSTALL_TARGET_PROCESSES = Camera

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = 11Cam16
11Cam16_FILES = Tweak.x
11Cam16_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk