#
# Makefile for 8675-FHD
#

# The original zip file, MUST be specified by each product
local-zip-file     := stockrom.zip

# The output zip file of MIUI rom, the default is porting_miui.zip if not specified
local-out-zip-file := MIUI_8675-FHD.zip

# the location for local-ota to save target-file
local-previous-target-dir := 

# All apps from original ZIP, but has smali files chanded
local-modified-apps := 

local-modified-priv-apps := 

local-modified-jars := 

local-remove-apps := 

# All apks from MIUI
local-miui-removed-apps := 

local-miui-removed-priv-apps := 

local-miui-modified-apps := MiuiFramework SecurityCenter DeskClock 
#MiuiSystemUI TeleService Settings

local-miui-removed-priv-apps := MediaProvider

#include phoneapps.mk

local-phone-apps := AMapNetworkLocation

local-phone-priv-apps := MediaProvider

local-density := XXHDPI

# To include the local targets before and after zip the final ZIP file, 
# and the local-targets should:
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := local-pre-zip-misc

local-after-zip:= local-move-target_files local-put-to-phone

# The local targets after the zip file is generated, could include 'zip2sd' to 
# deliver the zip file to phone, or to customize other actions

include $(PORT_BUILD)/porting.mk

# To define any local-target
PORT_PRODUCT := 8675-FHD_hehua2008
override ROM_BUILD_NUMBER := $(shell date +5.%-m.%-d)
override BUILD_NUMBER := $(ROM_BUILD_NUMBER)

local-pre-zip-misc:
	./other/mkbootimg/mkboot other/mkbootimg/boot $(ZIP_DIR)/boot.img
	cp other/servicemanager $(ZIP_DIR)/system/bin/
	cp other/libsqlite.so $(ZIP_DIR)/system/lib/
	cp other/build.prop $(ZIP_DIR)/system/
	echo "ro.miui.has_real_blur=0" >> $(ZIP_DIR)/system/build.prop

BUILD_TIME:=$(shell date +5.%-m.%-d.%H%M)

local-move-target_files:
	#mv out/fullota.zip miui_8675-FHD_hehua2008_$(BUILD_TIME).zip
	#mv out/target_files.zip target_files-$(BUILD_TIME).zip

local-put-to-phone:

#./../tools/releasetools/ota_from_target_files -k ../build/security/testkey -i target_files-.zip target_files-.zip miui_8675-FHD_hehua2008__for_.zip
