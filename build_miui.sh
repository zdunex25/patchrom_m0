#!/bin/bash
cd ../..
export PATH=$PATH:/home/$USER/android-sdk-linux/tools:/home/$USER/android-sdk-linux/platform-tools
cd patchromv5
. build/envsetup.sh
cd m0
mkdir BugReport
mkdir Mms/smali/com/android/mms/data
mkdir Mms/smali/com/android/mms/transaction
mkdir Mms/smali/com/android/mms/ui
mkdir Settings/res/xml
mkdir -p Settings/smali/com/android/settings
mkdir XiaomiServiceFramework
mkdir temp
cd temp
'../../tools/apktool' --quiet d -f '../../miui/XHDPI/system/app/Mms.apk'
cat 'Mms/AndroidManifest.xml' | sed -e "s/android:screenOrientation=\"portrait\" //g" \
				| sed -e "s/ android:screenOrientation=\"portrait\"//g" > '../Mms/AndroidManifest.xml'
cat 'Mms/smali/com/android/mms/data/WorkingMessage.smali' | sed -e 's/invoke-static {v3, v2}, Landroid\/telephony\/SmsMessage;->calculateLength(Ljava\/lang\/CharSequence;Z)\[I/invoke-static {v3}, Lcom\/android\/mms\/theos0o\/GsmEncoding;->seqToGSM(Ljava\/lang\/CharSequence;)Ljava\/lang\/String;\
\
    move-result-object v3\
\
    invoke-static {v3, v2}, Landroid\/telephony\/SmsMessage;->calculateLength(Ljava\/lang\/CharSequence;Z)\[I/' > '../Mms/smali/com/android/mms/data/WorkingMessage.smali'
cat 'Mms/smali/com/android/mms/transaction/SmsMessageSender.smali' | sed -e 's/iput-object p3, p0, Lcom\/android\/mms\/transaction\/SmsMessageSender;->mMessageText:Ljava\/lang\/String;/iput-object p3, p0, Lcom\/android\/mms\/transaction\/SmsMessageSender;->mMessageText:Ljava\/lang\/String;\
\
    invoke-static {p3}, Lcom\/android\/mms\/theos0o\/GsmEncoding;->textToGSM(Ljava\/lang\/String;)Ljava\/lang\/String;\
\
    move-result-object v2\
\
    iput-object v2, p0, Lcom\/android\/mms\/transaction\/SmsMessageSender;->mMessageText:Ljava\/lang\/String;/' > '../Mms/smali/com/android/mms/transaction/SmsMessageSender.smali'
cat 'Mms/smali/com/android/mms/ui/MessageUtils.smali' | sed -e 's/invoke-static {p0, v3}, Landroid\/telephony\/SmsMessage;->calculateLength(Ljava\/lang\/CharSequence;Z)\[I/invoke-static {p0}, Lcom\/android\/mms\/theos0o\/GsmEncoding;->seqToGSM(Ljava\/lang\/CharSequence;)Ljava\/lang\/String;\
\
    move-result-object v2\
\
    invoke-static {v2, v3}, Landroid\/telephony\/SmsMessage;->calculateLength(Ljava\/lang\/CharSequence;Z)\[I/' > '../Mms/smali/com/android/mms/ui/MessageUtils.smali'
cat 'Mms/smali/com/android/mms/ui/MessageEditableActivityBase.smali' | sed -e 's/invoke-static {v0, v1}, Landroid\/telephony\/SmsMessage;->calculateLength(Ljava\/lang\/CharSequence;Z)\[I/invoke-static {v0}, Lcom\/android\/mms\/theos0o\/GsmEncoding;->seqToGSM(Ljava\/lang\/CharSequence;)Ljava\/lang\/String;\
\
    move-result-object v0\
\
    invoke-static {v0, v1}, Landroid\/telephony\/SmsMessage;->calculateLength(Ljava\/lang\/CharSequence;Z)\[I/' > '../Mms/smali/com/android/mms/ui/MessageEditableActivityBase.smali'
'../../tools/apktool' --quiet d -f '../../miui/XHDPI/system/app/Settings.apk'
cat 'Settings/res/xml/settings_headers.xml' | sed -e "s/<header android:id=\"@id\/manufacturer_settings\">/<header android:title=\"@string\/header_category_galaxy\" \/>/g" \
					| sed -e 's/    <intent android:action=\"com.android.settings.MANUFACTURER_APPLICATION_SETTING\" \/>/<header android:icon=\"@drawable\/ic_ringer_volume_settings\" android:title=\"@string\/dsp_settings\">\
        <intent android:action="com.android.settings.DSP\" \/>\
    <\/header>\
    <header android:icon=\"@drawable\/ic_mobile_network_settings\" android:title=\"@string\/carrier_settings\">\
        <intent android:action="com.android.settings.CARRIER\" \/>\
    <\/header>\
    <header android:icon=\"@drawable\/ic_launcher_settings\" android:id=\"@id\/manufacturer_settings\" android:title=\"@string\/galaxy_settings\">\
        <intent android:action="com.android.settings.MANUFACTURER_APPLICATION_SETTING\" \/>\
    <\/header>\
    <header android:icon=\"@drawable\/ic_osb_settings\" android:title=\"@string\/osb_settings\">\
        <intent android:action="com.android.settings.OSB\" \/>/' \
					| sed -e "s/android:id=\"@id\/dock_settings\"/android:icon=\"@drawable\/ic_dock_settings\" android:id=\"@id\/dock_settings\"/g" > '../Settings/res/xml/settings_headers.xml'
cat 'Settings/res/xml/sound_settings.xml' | sed -e "s/android.musicfx/miui.player/g" \
				| sed -e "s/ControlPanelPicker/ui.EqualizerActivity/g" > '../Settings/res/xml/sound_settings.xml'
cat 'Settings/res/xml/device_info_settings.xml' | sed -e 's/android:key=\"kernel_version\" \/>/android:key=\"kernel_version\" \/>\
	<miui.preference.ValuePreference android:title=\"@string\/build_author\" android:key=\"build_author\" \/>/' > '../Settings/res/xml/device_info_settings.xml'
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
    const-string v24, \"ZduneX25\"\
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
cd ..
rm -r "temp"
make fullota
unzip -q out/fullota.zip -d out/temp
echo -e "\nPreparing flashable zips.."

grep -v 'package_extract_file("boot.img", "/dev/block/mmcblk0p5");' 'out/temp/META-INF/com/google/android/updater-script' >> 'out/temp/META-INF/com/google/android/updater-script2'
cp -f 'out/temp/META-INF/com/google/android/updater-script2' 'out/temp/META-INF/com/google/android/updater-script'
rm -f 'out/temp/META-INF/com/google/android/updater-script2'

x=`date +%Y`
y=`date +.%-m.%-d`
z=${x: -1:1}
version=$z$y
time=`date +%c`
utc=`date +%s`
ota=`date +%Y%m%d-%H%M`
cat 'out/temp/system/build.prop' | sed -e "s/ro\.build\.date=.*/ro\.build\.date=$time/g" \
				| sed -e "s/ro\.build\.date\.utc=.*/ro\.build\.date\.utc=$utc/g" \
				| sed -e "s/ro\.build\.version\.incremental=.*/ro\.build\.version\.incremental=$version/g" \
				| sed -e "s/updater\.time=.*/updater\.time=$ota/g" \
				| sed -e "s/updater\.ver=.*/updater\.ver=$version/g" \
				| sed -e "s/ro\.product\.mod_device=.*/ro\.product\.mod_device=i9300/g" > 'out/temp/system/build2.prop'
cp 'out/temp/system/build2.prop' 'out/temp/system/build.prop'
rm -f 'out/temp/system/build2.prop'
rm -f 'out/temp/system/etc/weather_city.db'
cp other/extras/gapps/*.apk out/temp/system/app

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

cd 'out/temp'
rm -r 'META-INF/CERT.RSA'
rm -r 'META-INF/CERT.SF'
rm -r 'META-INF/MANIFEST.MF'
zip -q -r "../../unsigned-miuigalaxy-v5-i9300-$version.zip" 'data' 'META-INF' 'system'
cd ../..
. ../build/envsetup.sh
cd m0
rm -f 'Mms/AndroidManifest.xml'
rm -rf 'BugReport'
rm -rf 'Mms/smali/com/android/mms/data'
rm -rf 'Mms/smali/com/android/mms/transaction'
rm -rf 'Mms/smali/com/android/mms/ui'
rm -rf 'Settings/res/xml'
rm -rf 'Settings/smali'
rm -rf 'XiaomiServiceFramework'
make clean
echo Signing rom
java -jar 'other/signapk.jar' 'other/testkey.x509.pem' 'other/testkey.pk8' "unsigned-miuigalaxy-v5-i9300-$version.zip" "miuigalaxy-v5-i9300-$version.zip"
rm -r "unsigned-miuigalaxy-v5-i9300-$version.zip"
echo -e "MD5 sum is\n"
md5sum -b "miuigalaxy-v5-i9300-$version.zip"
read -p "Done, miuigalaxy-v5-i9300-$version.zip and patch have been created in root of m0 directory, copy to sd and flash it!"
