#
# Makefile for ancora
#

# The original zip file, MUST be specified by each product
local-zip-file     := stockrom.zip

# The output zip file of MIUI rom, the default is porting_miui.zip if not specified
local-out-zip-file :=

# the location for local-ota to save target-file
local-previous-target-dir := 

# All apps from original ZIP, but has smali files chanded
local-modified-apps := 

local-modified-jars :=

# All apks from MIUI
local-miui-removed-apps := 

local-miui-modified-apps := MiuiHome MiuiSystemUI Settings Phone Mms ThemeManager

# All apps need to be removed from original ZIP file
local-remove-apps   := Apollo AudioEffectSettings CMFileManager CMFileManagerThemes \
CompassCalibrate CMWallpapers DefyParts Development DSPManager \
HTMLViewer LiveWallpapers LiveWallpapersPicker InputDevices PicoTts \
SpareParts Superuser SystemUI Term ThemeChooser Torch \
Trebuchet VoiceDialer CMUpdater \

# Config density for co-developers to use the aaps with HDPI or XHDPI resource,
# Default configrations are HDPI for ics branch and XHDPI for jellybean branch
local-density := HDPI

include 

# To include the local targets before and after zip the final ZIP file, 
# and the local-targets should:
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := local-pre-zip-misc
local-after-zip:= local-put-to-phone

# The local targets after the zip file is generated, could include 'zip2sd' to 
# deliver the zip file to phone, or to customize other actions

include $(PORT_BUILD)/porting.mk

# To define any local-target
#updater := $(ZIP_DIR)/META-INF/com/google/android/updater-script
#pre_install_data_packages := $(TMP_DIR)/pre_install_apk_pkgname.txt
local-pre-zip-misc:
	cp other/build.prop $(ZIP_DIR)/system/build.prop
	
	@echo Remove Bloatware
	rm -rf $(ZIP_DIR)/data/media/preinstall_apps/*.apk

out/framework2.jar : out/framework.jar

