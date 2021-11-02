export ARCHS = arm64 arm64e

PREFIX=$(THEOS)/toolchain/Xcode.xctoolchain/usr/bin/

TARGET := iphone:clang:latest:14.0
INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = NotDoxed

NotDoxed_FILES = Tweak.xm
NotDoxed_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
