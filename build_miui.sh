#!/bin/bash
cd ../..
export PATH=$PATH:/home/$USER/android-sdk-linux/tools:/home/$USER/android-sdk-linux/platform-tools
cd patchromv5
. build/envsetup.sh
cd m0
mkdir BugReport
#mkdir Mms/smali/com/android/mms/data
#mkdir Mms/smali/com/android/mms/transaction
#mkdir Mms/smali/com/android/mms/ui
mkdir Settings/res/xml
mkdir -p Settings/smali/com/android/settings
mkdir XiaomiServiceFramework
mkdir -p temp/pl
cd ../miuipolska/Polish/main
for i in * ; do cp -r "$i" "../../../m0/temp/pl/${i//\.apk/}" ; done
cd ../../../m0/temp
find pl -name "*-hdpi" | xargs rm -rf
find pl -name "hdpi" | xargs rm -rf
#'../../tools/apktool' --quiet d -f '../../miui/XHDPI/system/app/Mms.apk'
#cat 'Mms/AndroidManifest.xml' | sed -e "s/android:screenOrientation=\"portrait\" //g" \
#				| sed -e "s/ android:screenOrientation=\"portrait\"//g" > '../Mms/AndroidManifest.xml'
#cat 'Mms/smali/com/android/mms/data/WorkingMessage.smali' | sed -e 's/invoke-static {v3, v2}, Landroid\/telephony\/SmsMessage;->calculateLength(Ljava\/lang\/CharSequence;Z)\[I/invoke-static {v3}, Lcom\/android\/mms\/theos0o\/GsmEncoding;->seqToGSM(Ljava\/lang\/CharSequence;)Ljava\/lang\/String;\
#\
#    move-result-object v3\
#\
#    invoke-static {v3, v2}, Landroid\/telephony\/SmsMessage;->calculateLength(Ljava\/lang\/CharSequence;Z)\[I/' > '../Mms/smali/com/android/mms/data/WorkingMessage.smali'
#cat 'Mms/smali/com/android/mms/transaction/SmsMessageSender.smali' | sed -e 's/iput-object p3, p0, Lcom\/android\/mms\/transaction\/SmsMessageSender;->mMessageText:Ljava\/lang\/String;/iput-object p3, p0, Lcom\/android\/mms\/transaction\/SmsMessageSender;->mMessageText:Ljava\/lang\/String;\
#\
#    invoke-static {p3}, Lcom\/android\/mms\/theos0o\/GsmEncoding;->textToGSM(Ljava\/lang\/String;)Ljava\/lang\/String;\
#\
#    move-result-object v2\
#\
#    iput-object v2, p0, Lcom\/android\/mms\/transaction\/SmsMessageSender;->mMessageText:Ljava\/lang\/String;/' > '../Mms/smali/com/android/mms/transaction/SmsMessageSender.smali'
#cat 'Mms/smali/com/android/mms/ui/MessageUtils.smali' | sed -e 's/invoke-static {p0, v3}, Landroid\/telephony\/SmsMessage;->calculateLength(Ljava\/lang\/CharSequence;Z)\[I/invoke-static {p0}, Lcom\/android\/mms\/theos0o\/GsmEncoding;->seqToGSM(Ljava\/lang\/CharSequence;)Ljava\/lang\/String;\
#\
#    move-result-object v2\
#\
#    invoke-static {v2, v3}, Landroid\/telephony\/SmsMessage;->calculateLength(Ljava\/lang\/CharSequence;Z)\[I/' > '../Mms/smali/com/android/mms/ui/MessageUtils.smali'
#cat 'Mms/smali/com/android/mms/ui/MessageEditableActivityBase.smali' | sed -e 's/invoke-static {v0, v1}, Landroid\/telephony\/SmsMessage;->calculateLength(Ljava\/lang\/CharSequence;Z)\[I/invoke-static {v0}, Lcom\/android\/mms\/theos0o\/GsmEncoding;->seqToGSM(Ljava\/lang\/CharSequence;)Ljava\/lang\/String;\
#\
#    move-result-object v0\
#\
#    invoke-static {v0, v1}, Landroid\/telephony\/SmsMessage;->calculateLength(Ljava\/lang\/CharSequence;Z)\[I/' > '../Mms/smali/com/android/mms/ui/MessageEditableActivityBase.smali'
'../../tools/apktool' --quiet d -f '../../miui/XHDPI/system/app/Settings.apk'
cat 'Settings/res/xml/settings_headers.xml' | sed -e "s/<header android:id=\"@id\/manufacturer_settings\">/<header android:title=\"@string\/header_category_galaxy\" \/>/g" \
					| sed -e 's/    <intent android:action=\"com.android.settings.MANUFACTURER_APPLICATION_SETTING\" \/>/<header android:icon=\"@drawable\/ic_ringer_volume_settings\" android:title=\"@string\/viper_settings\">\
        <intent android:action="com.android.settings.VIPER\" \/>\
    <\/header>\
    <header android:icon=\"@drawable\/ic_mobile_network_settings\" android:title=\"@string\/carrier_settings\">\
        <intent android:action="com.android.settings.CARRIER\" \/>\
    <\/header>\
    <header android:icon=\"@drawable\/ic_launcher_settings\" android:id=\"@id\/manufacturer_settings\" android:title=\"@string\/galaxy_settings\">\
        <intent android:action="com.android.settings.MANUFACTURER_APPLICATION_SETTING\" \/>\
    <\/header>\
    <header android:icon=\"@drawable\/ic_key_settings\" android:title=\"@string\/osb_settings\">\
        <intent android:action="com.android.settings.OSB\" \/>/' > '../Settings/res/xml/settings_headers.xml'
cat 'Settings/res/xml/sound_settings.xml' | sed -e "s/android.musicfx/miui.player/g" \
				| sed -e "s/ControlPanelPicker/ui.EqualizerActivity/g" > '../Settings/res/xml/sound_settings.xml'
cat 'Settings/res/xml/device_info_settings.xml' | sed -e 's/android:key=\"kernel_version\" \/>/android:key=\"kernel_version\" \/>\
	<miui.preference.ValuePreference android:title=\"@string\/build_author\" android:key=\"build_author\" \/>\
	<miui.preference.ValuePreference android:title=\"@string\/polish_translation\" android:key=\"polish_translation\" \/>/' > '../Settings/res/xml/device_info_settings.xml'
#cat 'Settings/smali/com/android/settings/MiuiDeviceInfoSettings.smali' | sed -e 's/MenuInflater;)V/MenuInflater;)V \
#    return-void/' > 'Settings/smali/com/android/settings/MiuiDeviceInfoSettings2.smali'
cat 'Settings/smali/com/android/settings/MiuiDeviceInfoSettings.smali' | sed -e 's/invoke-direct {v0, v1, v2}, Lcom\/android\/settings\/MiuiDeviceInfoSettings;->setStringSummary(Ljava\/lang\/String;Ljava\/lang\/String;)V/invoke-direct {v0, v1, v2}, Lcom\/android\/settings\/MiuiDeviceInfoSettings;->setStringSummary(Ljava\/lang\/String;Ljava\/lang\/String;)V\
\
    .line 116\
    const-string v22, \"build_author\"\
\
    new-instance v23, Ljava\/lang\/StringBuilder;\
\
    invoke-direct\/range {v23 .. v23}, Ljava\/lang\/StringBuilder;-><init>()V\
\
    const-string v24, \"ZduneX25 i MIUI\"\
\
    invoke-virtual\/range {v23 .. v24}, Ljava\/lang\/StringBuilder;->append(Ljava\/lang\/String;)Ljava\/lang\/StringBuilder;\
\
    move-result-object v23\
\
    invoke-virtual\/range {v23 .. v23}, Ljava\/lang\/StringBuilder;->toString()Ljava\/lang\/String;\
\
    move-result-object v23\
\
    move-object\/from16 v0, p0\
\
    move-object\/from16 v1, v22\
\
    move-object\/from16 v2, v23\
\
    invoke-direct {v0, v1, v2}, Lcom\/android\/settings\/MiuiDeviceInfoSettings;->setStringSummary(Ljava\/lang\/String;Ljava\/lang\/String;)V\
\
    .line 118\
    const-string v22, \"polish_translation\"\
\
    new-instance v23, Ljava\/lang\/StringBuilder;\
\
    invoke-direct\/range {v23 .. v23}, Ljava\/lang\/StringBuilder;-><init>()V\
\
    const-string v24, \"Acid (MIUI Polska)\"\
\
    invoke-virtual\/range {v23 .. v24}, Ljava\/lang\/StringBuilder;->append(Ljava\/lang\/String;)Ljava\/lang\/StringBuilder;\
\
    move-result-object v23\
\
    invoke-virtual\/range {v23 .. v23}, Ljava\/lang\/StringBuilder;->toString()Ljava\/lang\/String;\
\
    move-result-object v23\
\
    move-object\/from16 v0, p0\
\
    move-object\/from16 v1, v22\
\
    move-object\/from16 v2, v23\
\
    invoke-direct {v0, v1, v2}, Lcom\/android\/settings\/MiuiDeviceInfoSettings;->setStringSummary(Ljava\/lang\/String;Ljava\/lang\/String;)V/' > '../Settings/smali/com/android/settings/MiuiDeviceInfoSettings.smali'
'../../tools/apktool' --quiet d -f '../../miui/XHDPI/system/app/BugReport.apk'
grep -v '<action android:name="android.intent.action.MAIN" />' 'BugReport/AndroidManifest.xml' >> 'BugReport/AndroidManifest2.xml'
grep -v '<category android:name="android.intent.category.LAUNCHER" />' 'BugReport/AndroidManifest2.xml' >> '../BugReport/AndroidManifest.xml'
'../../tools/apktool' --quiet d -f '../../miui/XHDPI/system/app/XiaomiServiceFramework.apk'
grep -v '<action android:name="android.intent.action.MAIN" />' 'XiaomiServiceFramework/AndroidManifest.xml' >> 'XiaomiServiceFramework/AndroidManifest2.xml'
grep -v '<category android:name="android.intent.category.LAUNCHER" />' 'XiaomiServiceFramework/AndroidManifest2.xml' >> '../XiaomiServiceFramework/AndroidManifest.xml'
'../../tools/apktool' --quiet d -f '../../miui/XHDPI/system/app/LBESEC_MIUI.apk'
cp -u -r pl/LBESEC_MIUI/* LBESEC_MIUI
'../../tools/apktool' --quiet b -f 'LBESEC_MIUI' '../other/unsigned-LBESEC_MIUI.apk'
rm -rf pl/ApplicationsProvider
rm -rf pl/BackupRestoreConfirmation
rm -rf pl/CABLService
rm -rf pl/CertInstaller
rm -rf pl/Cit
rm -rf pl/DrmProvider
rm -rf pl/GuardProvider
rm -rf pl/LBESEC_MIUI
rm -rf pl/LiveWallpapers
rm -rf pl/LiveWallpapersPicker
rm -rf pl/MIUIStats
rm -rf pl/MusicFX
rm -rf pl/NetworkLocation
rm -rf pl/Nfc
rm -rf pl/TelocationProvider
rm -rf pl/Updater
cp -u -r pl/Bluetooth/* ../Bluetooth
cp -u -r pl/BugReport/* ../BugReport
cp -u -r pl/MiuiHome/* ../MiuiHome
cp -u -r pl/MiuiSystemUI/* ../MiuiSystemUI
cp -u -r pl/Mms/* ../Mms
sed -i -e 's/\"no_effect\">Płaski/\"no_effect\">ViPER FX/' pl/Music/res/values-pl/strings.xml
cp -u -r pl/Music/* ../Music
cp -u -r pl/Phone/* ../Phone
sed -i -e 's/>Efekty muzyczne/>Equalizer MIUI/' pl/Settings/res/values-pl/strings.xml
sed -i -e 's/>Wyłącz okno Zasilania/>Wyłącz okno zasilania/' pl/Settings/res/values-pl/strings.xml
sed -i -e 's/>Szybkie zdjęcie/>Wstecz to skrót aparatu/' pl/Settings/res/values-pl/strings.xml
sed -i -e 's/<\/resources>/  <string name=\"polish_translation\">Spolszczenie<\/string>\
<\/resources>/' pl/Settings/res/values-pl/strings.xml
cp -u -r pl/Settings/* ../Settings
cp -f ../Settings/res/drawable-en-xhdpi/miui_logo.png  ../Settings/res/drawable-pl-xhdpi/miui_logo.png
cp -u -r ../../miuipolska/Polish/device/m0/Settings.apk/* ../Settings
cp -u -r pl/ThemeManager/* ../ThemeManager
cp -u -r pl/XiaomiServiceFramework/* ../XiaomiServiceFramework
cp -u -r pl/framework-miui-res/res/* ../../miui/src/frameworks/miui/core/res/res
cp -f ../../miui/src/frameworks/miui/core/res/res/values/arrays.xml ../other/arrays.xml
sed -i -e 's/<item>en_US<\/item>/<item>en_US<\/item>\
        <item>pl_PL<\/item>/' ../../miui/src/frameworks/miui/core/res/res/values/arrays.xml
rm -rf pl/Bluetooth
rm -rf pl/BugReport
rm -rf pl/MiuiHome
rm -rf pl/MiuiSystemUI
rm -rf pl/Mms
rm -rf pl/Music
rm -rf pl/Phone
rm -rf pl/Settings
rm -rf pl/ThemeManager
rm -rf pl/XiaomiServiceFramework
rm -rf pl/framework-miui-res
cp -u -r pl/* ..
cd ..
rm -r temp
make fullota

if [ -f "out/fullota.zip" ];
then
unzip -q out/fullota.zip -d out/temp
echo -e "\nPreparing flashable zips.."

cp -f other/updater-script-rom out/temp/META-INF/com/google/android/updater-script
sed -i -e 's/show_progress(0.200000, 10);/show_progress(0.200000, 10);\
package_extract_file(\"boot.img\", \"/dev/block/mmcblk0p5\");/' out/temp/META-INF/com/google/android/updater-script

x=`date +%Y`
y=`date +.%-m.%-d`
z=${x: -1:1}
version=$z$y
time=`date +%c`
utc=`date +%s`
ota=`date +%Y%m%d-%H%M`

sed -i -e "s/ro\.build\.date=.*/ro\.build\.date=$time/g" out/temp/system/build.prop
sed -i -e "s/ro\.build\.date\.utc=.*/ro\.build\.date\.utc=$utc/g" out/temp/system/build.prop
sed -i -e "s/ro\.build\.version\.incremental=.*/ro\.build\.version\.incremental=$version/g" out/temp/system/build.prop
sed -i -e "s/updater\.time=.*/updater\.time=$ota/g" out/temp/system/build.prop
sed -i -e "s/updater\.ver=.*/updater\.ver=$version/g" out/temp/system/build.prop
sed -i -e "s/ro\.product\.mod_device=.*/ro\.product\.mod_device=i9300/g" out/temp/system/build.prop
rm -f out/temp/system/etc/weather_city.db
java -jar 'other/signapk.jar' 'other/testkey.x509.pem' 'other/testkey.pk8' "out/temp/system/app/NetworkLocation.apk" "other/signed-NetworkLocation.apk"
java -jar 'other/signapk.jar' 'other/testkey.x509.pem' 'other/testkey.pk8' "other/unsigned-LBESEC_MIUI.apk" "other/signed-LBESEC_MIUI.apk"
'other/zipalign' -f 4 "other/signed-LBESEC_MIUI.apk" "other/LBESEC_MIUI.apk"
mv -f other/signed-NetworkLocation.apk out/temp/system/app/NetworkLocation.apk
mv -f other/LBESEC_MIUI.apk out/temp/system/app/LBESEC_MIUI.apk
rm -f other/unsigned-LBESEC_MIUI.apk
rm -f other/signed-LBESEC_MIUI.apk

cp other/extras/gapps/*.apk out/temp/system/app
cp -f -r other/extras/data/* out/temp/system/media/theme/.data
cp -f ../miuipolska/Polish/extras/system/etc/apns-conf.xml out/temp/system/etc/apns-conf.xml
cp -f ../miuipolska/Polish/extras/system/etc/gps.conf out/temp/system/etc/gps.conf
cp -f ../miuipolska/Polish/extras/system/etc/spn-conf.xml out/temp/system/etc/spn-conf.xml

mv out/temp/system/media/theme/default/alarmscreen out/temp/system/media/theme/default/alarmscreen.zip
mv out/temp/system/media/theme/default/lockscreen out/temp/system/media/theme/default/lockscreen.zip
cd ../miuipolska/Polish/extras/alarmscreen
zip ../../../../m0/out/temp/system/media/theme/default/alarmscreen.zip -q strings/strings_pl.xml
cd ../lockscreen
zip ../../../../m0/out/temp/system/media/theme/default/lockscreen.zip -q advance/strings/strings_pl.xml
cd ../../../../m0
mv out/temp/system/media/theme/default/alarmscreen.zip out/temp/system/media/theme/default/alarmscreen
mv out/temp/system/media/theme/default/lockscreen.zip out/temp/system/media/theme/default/lockscreen

mv out/temp/system/media/theme/.data/content/clock_2x4/clock.mrc out/temp/system/media/theme/.data/content/clock_2x4/clock.zip
cp out/temp/system/media/theme/.data/content/clock_2x4/clock.zip out/temp/system/media/theme/.data/content/clock_2x4/clock_center.zip
cp out/temp/system/media/theme/.data/content/clock_2x4/clock.zip out/temp/system/media/theme/.data/content/clock_2x4/clock_left.zip
cd ../miuipolska/Polish/extras/clocks
zip ../../../../m0/out/temp/system/media/theme/.data/content/clock_2x4/clock.zip -q strings/strings_pl.xml
zip ../../../../m0/out/temp/system/media/theme/.data/content/clock_2x4/clock_center.zip -q strings/strings_pl.xml
zip ../../../../m0/out/temp/system/media/theme/.data/content/clock_2x4/clock_left.zip -q strings/strings_pl.xml
cd right
zip ../../../../../m0/out/temp/system/media/theme/.data/content/clock_2x4/clock.zip -q manifest.xml
cd ../center
zip ../../../../../m0/out/temp/system/media/theme/.data/content/clock_2x4/clock_center.zip -q manifest.xml
cd ../left
zip ../../../../../m0/out/temp/system/media/theme/.data/content/clock_2x4/clock_left.zip -q manifest.xml
cd ../../../../../m0
mv out/temp/system/media/theme/.data/content/clock_2x4/clock.zip out/temp/system/media/theme/.data/content/clock_2x4/clock.mrc
mv out/temp/system/media/theme/.data/content/clock_2x4/clock_center.zip out/temp/system/media/theme/.data/content/clock_2x4/clock_center.mrc
mv out/temp/system/media/theme/.data/content/clock_2x4/clock_left.zip out/temp/system/media/theme/.data/content/clock_2x4/clock_left.mrc

mv out/temp/system/media/theme/.data/content/clock_2x4/simple_clock.mrc out/temp/system/media/theme/.data/content/clock_2x4/simple_clock.zip
cd ../miuipolska/Polish/extras/simple_clock
zip ../../../../m0/out/temp/system/media/theme/.data/content/clock_2x4/simple_clock.zip -q images_pl/*.png
cd ../../../../m0
mv out/temp/system/media/theme/.data/content/clock_2x4/simple_clock.zip out/temp/system/media/theme/.data/content/clock_2x4/simple_clock.mrc

for DIR in out/temp/system/app/; do
	cd $DIR;
	for APK in *.apk; do
		ZIPCHECK=`../../../../other/zipalign -c -v 4 $APK | grep FAILED | wc -l`;
		if [ $ZIPCHECK == "1" ]; then
			echo "Now aligning: $DIR/$APK" >> ../../../../zipalign_app.log;
			mkdir ../app_done
			../../../../other/zipalign -v -f 4 $APK ../app_done/$APK;
			cp -f -p ../app_done/$APK $APK;
			rm -rf ../app_done
		else
			echo "Already aligned: $DIR/$APK" >> ../../../../zipalign_app.log;
		fi;
	done;
	cd ../../../..
done;

cd out/temp
rm META-INF/CERT.RSA
rm META-INF/CERT.SF
rm META-INF/MANIFEST.MF
zip -q -r "../../unsigned-miuigalaxy-v5-sgs3-$version.zip" 'data' 'META-INF' 'system' 'boot.img'
cd ../..
fi
. ../build/envsetup.sh
cd m0
rm -rf AntiSpam
rm -rf Backup
rm -rf Bluetooth/res/values-pl
rm -rf Browser
rm -rf BugReport
rm -rf Calculator
rm -rf Calendar
rm -rf CalendarProvider
rm -rf CloudService
rm -rf Contacts
rm -rf ContactsProvider
rm -rf DeskClock
rm -rf DownloadProvider
rm -rf DownloadProviderUi
rm -rf Email
rm -rf Exchange2
rm -rf FileExplorer
rm -rf MiuiCompass
rm -rf MiuiGallery
rm -rf MiuiHome/res/drawable-pl-xhdpi
rm -rf MiuiHome/res/values-pl
rm -rf MiuiSystemUI/res/values-pl
rm -rf MiuiVideoPlayer
rm -f Mms/AndroidManifest.xml
rm -rf Mms/res/raw-pl
rm -rf Mms/res/values-pl
#rm -rf Mms/smali/com/android/mms/data
#rm -rf Mms/smali/com/android/mms/transaction
#rm -rf Mms/smali/com/android/mms/ui
rm -rf Music/res/drawable-pl-xhdpi
rm -rf Music/res/values-pl
rm -rf NetworkAssistant
rm -rf Notes
rm -rf PackageInstaller
rm -rf Phone/res/values-pl
rm -rf Provision
rm -rf QuickSearchBox
rm -rf Settings/res/drawable-pl-hdpi
rm -rf Settings/res/drawable-pl-xhdpi
rm -rf Settings/res/values-pl
rm -rf Settings/res/values-pl-rPL
rm -rf Settings/res/xml
rm -rf Settings/res/xml-pl
rm -rf Settings/smali
rm -rf SoundRecorder
rm -rf Stk
rm -rf TelephonyProvider
rm -rf ThemeManager/res/drawable-pl-hdpi
rm -rf ThemeManager/res/drawable-pl-xhdpi
rm -rf ThemeManager/res/values-pl
rm -rf Transfer
rm -rf VpnDialogs
rm -rf WeatherProvider
rm -rf XiaomiServiceFramework
rm -rf YellowPage
rm -rf ../miui/src/frameworks/miui/core/res/res/values-pl-rPL
mv -f other/arrays.xml ../miui/src/frameworks/miui/core/res/res/values
make clean
echo Signing rom
java -jar 'other/signapk.jar' 'other/testkey.x509.pem' 'other/testkey.pk8' "unsigned-miuigalaxy-v5-sgs3-$version.zip" "miuigalaxy-v5-sgs3-$version.zip"
rm -r unsigned-miuigalaxy-v5-sgs3-$version.zip
#java -jar 'other/signapk.jar' 'other/testkey.x509.pem' 'other/testkey.pk8' "unsigned-miuigalaxy-v5-sgs3-ota-to-$version.zip" "miuigalaxy-v5-sgs3-ota-to-$version.zip"
#rm -r unsigned-miuigalaxy-v5-sgs3-ota-to-$version.zip
#md5sum -b "miuigalaxy-v5-sgs3-ota-to-$version.zip"

md5=`md5sum miuigalaxy-v5-sgs3-$version.zip | cut -d" " -f1`
size=`du -sh md5sum miuigalaxy-v5-sgs3-$version.zip | cut -c1-4`
data=`date +%-d/%-m/%Y`
LINK_PL="http://91.205.75.29//zdunex25/$version/miuigalaxy-v5-sgs3-$version.zip"
MIRROR1_PL="http://goo.im/devs/mikegapinski/miuigalaxy-v5-sgs3-$version.zip"
MIRROR2_PL="http://htcfanboys.com/download/acid/files/MIUIv5/$version/miuigalaxy-v5-sgs3-$version.zip"
echo '[dwl producent="'samsung'" board="'m0'" tytul="'Samsung Galaxy S3'" android="'4.1.1'" miui="'$version'" data="'$data'" md5="'$md5'" informacje="ROM Kamila Zdancewicza" status="" link="'$LINK_PL'" mirror1="'$MIRROR1_PL'" mirror2="'$MIRROR2_PL'" rozmiar="'$size'" rodzaj="pelna"]
    
    ' > download_v5.txt
read -p "Done, miuigalaxy-v5-sgs3-$version.zip has been created in root of m0 directory, copy to sd and flash it!"
