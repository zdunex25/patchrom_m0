#
# Makefile for gnote
#

# The original zip file, MUST be specified by each product
local-zip-file     := stockrom.zip

# The output zip file of MIUI rom, the default is porting_miui.zip if not specified
local-out-zip-file := MIUI_i9300.zip

# the location for local-ota to save target-file
local-previous-target-dir := ~/workspace/ota_base/i9300_4.1

# All apps from original ZIP, but has smali files chanded
local-modified-apps := Camera FmRadio MiuiUpdater SPN OSB OriginalSettings

local-modified-jars :=

# All apks from MIUI
local-miui-removed-apps := MediaProvider SuperMarket Updater Weather

local-miui-modified-apps := MiuiHome Settings Phone Mms ThemeManager MiuiSystemUI BugReport XiaomiServiceFramework Music

# Config density for co-developers to use the aaps with HDPI or XHDPI resource,
# Default configrations are HDPI for ics branch and XHDPI for jellybean branch
local-density := XHDPI

include phoneapps.mk

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
updater := $(ZIP_DIR)/META-INF/com/google/android/updater-script
pre_install_data_packages := $(TMP_DIR)/pre_install_apk_pkgname.txt
local-pre-zip-misc:
	cp other/spn-conf.xml $(ZIP_DIR)/system/etc/spn-conf.xml
	cp other/apns-conf.xml $(ZIP_DIR)/system/etc/apns-conf.xml
	
	@echo Add missing stuff
	cp -f other/icons $(ZIP_DIR)/system/media/theme/default/icons
	cp other/extras/miui_mod_icons/*.png $(ZIP_DIR)/system/media/theme/miui_mod_icons/
#	cp -f other/extras/lock_wallpaper $(ZIP_DIR)/system/media/theme/default/lock_wallpaper
	cp stockrom/system/app/FFFFFFFF000000000000000000000001.drbin $(ZIP_DIR)/system/app
	cp -r stockrom/system/app/mcRegistry $(ZIP_DIR)/system/app
	cp -f other/audio_effects.conf $(ZIP_DIR)/system/etc/audio_effects.conf
	cp -f other/*.so $(ZIP_DIR)/system/lib/soundfx
	
	@echo Add various apps
	cp other/DSPManager.apk $(ZIP_DIR)/system/app/DSPManager.apk
	cp other/MiuiWeather.apk $(ZIP_DIR)/system/app/MiuiWeather.apk
#	cp other/MusicFX.apk $(ZIP_DIR)/system/app/MusicFX.apk
#	cp other/OriginalSettings.apk $(ZIP_DIR)/system/app/OriginalSettings.apk
	
	@echo Update build.prop
	cp other/build.prop $(ZIP_DIR)/system/build.prop
	
	@echo Update bootanimation
	rm $(ZIP_DIR)/system/bin/bootanimation
	cp -f other/bootanimation.zip $(ZIP_DIR)/system/media/bootanimation.zip
	
	@echo Remove usless stuff
	rm -rf $(ZIP_DIR)/data/media/preinstall_apps/*.apk
#	rm -rf $(ZIP_DIR)/system/csc
#	rm -f $(ZIP_DIR)/system/etc/permissions/com.google.android.maps.xml
#	rm -f $(ZIP_DIR)/system/etc/permissions/com.google.android.media.effects.xml
#	rm -f $(ZIP_DIR)/system/etc/permissions/com.google.widevine.software.drm.xml
#	rm -f $(ZIP_DIR)/system/framework/com.google.android.maps.jar
#	rm -f $(ZIP_DIR)/system/framework/com.google.android.media.effects.jar
#	rm -f $(ZIP_DIR)/system/framework/com.google.widevine.software.drm.jar
	rm -rf $(ZIP_DIR)/system/tts/lang_SMT
	rm -rf $(ZIP_DIR)/system/tts/lang_SVOX
#	rm -rf $(ZIP_DIR)/system/usr/srec/en-US

out/framework2.jar : out/framework.jar
