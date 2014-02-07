#
# Makefile for gnote
#

# The original zip file, MUST be specified by each product
local-zip-file     := stockrom.zip

# The output zip file of MIUI rom, the default is porting_miui.zip if not specified
local-out-zip-file := MIUI_I9300.zip

# All apps from original ZIP, but has smali files chanded
local-modified-apps := Camera GalaxyS3Settings m7Parts VFX #MiuiUpdater

local-modified-jars := #framework_ext

# All apks from MIUI
local-miui-removed-apps := MediaProvider MiuiVideo SuperMarket VoiceAssist BaiduNetworkLocation GameCenter GameCenterSDKService

local-miui-modified-apps := AntiSpam Backup Browser BugReport Calculator Calendar CalendarProvider CloudService Contacts \
			ContactsProvider DeskClock DownloadProvider DownloadProviderUi Email Exchange2 FileExplorer MiuiCompass \
			MiuiGallery MiuiHome MiuiSystemUI MiuiVideoPlayer MiWallpaper Mms Music NetworkAssistant Notes PackageInstaller Phone \
			PaymentService Provision QuickSearchBox Settings SoundRecorder TelephonyProvider ThemeManager Transfer Updater VpnDialogs \
			Weather WeatherProvider XiaomiServiceFramework YellowPage

# Config density for co-developers to use the aaps with HDPI or XHDPI resource,
# Default configrations are HDPI for ics branch and XHDPI for jellybean branch
local-density := XHDPI

# All apps need to be removed from original ZIP file
local-remove-apps   := SystemUI Gallery2 Stk Launcher2 VideoEditor PicoTts VoiceDialer \
		HoloSpiralWallpaper MagicSmokeWallpapers PhaseBeam Galaxy4 NoiseField

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
	cp other/spn-conf.xml $(ZIP_DIR)/system/etc/spn-conf.xml
#	cp other/apns-conf.xml $(ZIP_DIR)/system/etc/apns-conf.xml
	cp other/boot.img $(ZIP_DIR)/boot.img
	cp other/system_fonts.xml $(ZIP_DIR)/system/etc/system_fonts.xml
	
	@echo Add missing stuff
	cp -f other/icons $(ZIP_DIR)/system/media/theme/default/icons
	cp -f other/extras/miui_mod_icons/*.png $(ZIP_DIR)/system/media/theme/miui_mod_icons/
#	cp -f other/extras/lock_wallpaper $(ZIP_DIR)/system/media/theme/default/lock_wallpaper
	
	@echo Update build.prop
	cp other/build.prop $(ZIP_DIR)/system/build.prop
	
	@echo Update bootanimation
#	rm $(ZIP_DIR)/system/bin/bootanimation
	cp -f other/bootanimation.zip $(ZIP_DIR)/system/media/bootanimation.zip
	
	@echo Remove usless stuff
	rm -rf $(ZIP_DIR)/data/media/preinstall_apps/*.apk
	rm -rf $(ZIP_DIR)/system/media/video/*.mp4
	rm -rf $(ZIP_DIR)/system/tts/lang_pico/*.bin

