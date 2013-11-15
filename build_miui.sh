#!/bin/bash
cd ../..
export PATH=$PATH:/home/$USER/android-sdk-linux/tools:/home/$USER/android-sdk-linux/platform-tools
cd patchromv542
. build/envsetup.sh
cd m0
mkdir AntiSpam Backup Browser BugReport Calculator Calendar CalendarProvider CloudService Contacts ContactsProvider DeskClock DownloadProvider DownloadProviderUi Email Exchange2 FileExplorer MiuiCompass MiuiGallery MiuiVideoPlayer MiWallpaper NetworkAssistant Notes PackageInstaller PaymentService Provision QuickSearchBox SoundRecorder TelephonyProvider Transfer VpnDialogs WeatherProvider XiaomiServiceFramework YellowPage temp
cd temp

'../../tools/apktool' --quiet d -f '../../miui/XHDPI/system/app/LBESEC_MIUI.apk'
cp -u -r ../../miuipolska/Polish/main/LBESEC_MIUI.apk/* LBESEC_MIUI
'../../tools/apktool' --quiet b -f 'LBESEC_MIUI' '../other/unsigned-LBESEC_MIUI.apk'
'../../tools/apktool' --quiet d -f '../../miui/XHDPI/system/app/Mms.apk'
sed -i -e 's/android:screenOrientation=\"portrait\" //' Mms/AndroidManifest.xml
sed -i -e 's/ android:screenOrientation=\"portrait\"//' Mms/AndroidManifest.xml
cp -u -r ../../miuipolska/Polish/main/Mms.apk/* Mms
'../../tools/apktool' --quiet b -f 'Mms' '../other/unsigned-Mms.apk'

cd ..
rm -r temp
make fullota

if [ -f "out/fullota.zip" ];
then
unzip -q out/fullota.zip -d out/temp
echo -e "\nPreparing flashable zips.."

cp -f other/updater-script-rom out/temp/META-INF/com/google/android/updater-script

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
sed -i -e "s/ro\.goo\.version=.*/ro\.goo\.version=$version/g" out/temp/system/build.prop
sed -i -e "s/ro\.product\.mod_device=.*/ro\.product\.mod_device=m0_z25/g" out/temp/system/build.prop

java -jar 'other/signapk.jar' 'other/testkey.x509.pem' 'other/testkey.pk8' "other/unsigned-LBESEC_MIUI.apk" "other/signed-LBESEC_MIUI.apk"
'other/zipalign' -f 4 "other/signed-LBESEC_MIUI.apk" "other/LBESEC_MIUI.apk"
mv -f other/LBESEC_MIUI.apk out/temp/system/app/LBESEC_MIUI.apk
java -jar 'other/signapk.jar' 'other/testkey.x509.pem' 'other/testkey.pk8' "other/unsigned-Mms.apk" "other/signed-Mms.apk"
'other/zipalign' -f 4 "other/signed-Mms.apk" "other/Mms.apk"
mkdir out/temp/system/usr/extras
mv -f other/Mms.apk out/temp/system/usr/extras/Mms.apk
cp -f other/unicode.sh out/temp/system/bin/unicode.sh

find other -name "unsigned-*" | xargs rm -f
find other -name "signed-*" | xargs rm -f

rm -f out/temp/system/etc/weather_city.db
cp other/extras/gapps/*.apk out/temp/system/app
cp -f -r other/extras/data/* out/temp/system/media/theme/.data
cp -f ../miuipolska/Polish/extras/system/etc/* out/temp/system/etc

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
cd Prawy
zip ../../../../../m0/out/temp/system/media/theme/.data/content/clock_2x4/clock.zip -q manifest.xml
cd ../Bateria_Srodek
zip ../../../../../m0/out/temp/system/media/theme/.data/content/clock_2x4/clock_center.zip -q manifest.xml
cd ../Bateria_Prawy
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

cd out/temp

rm META-INF/CERT.RSA
rm META-INF/CERT.SF
rm META-INF/MANIFEST.MF
zip -q -r "../../unsigned-miuigalaxy-v5-sgs3-$version-4.2.zip" 'data' 'META-INF' 'system' 'boot.img'
cd ../..
fi
. ../build/envsetup.sh
cd m0

rmdir AntiSpam Backup Browser BugReport Calculator Calendar CalendarProvider CloudService Contacts ContactsProvider DeskClock DownloadProvider DownloadProviderUi Email Exchange2 FileExplorer MiuiCompass MiuiGallery MiuiVideoPlayer MiWallpaper NetworkAssistant Notes PackageInstaller PaymentService Provision QuickSearchBox SoundRecorder TelephonyProvider Transfer VpnDialogs WeatherProvider XiaomiServiceFramework YellowPage
find other -name "unsigned-*" | xargs rm -f
make clean
echo Signing rom
java -jar 'other/signapk.jar' 'other/testkey.x509.pem' 'other/testkey.pk8' "unsigned-miuigalaxy-v5-sgs3-$version-4.2.zip" "miuigalaxy-v5-sgs3-$version-4.2.zip"
rm -r unsigned-miuigalaxy-v5-sgs3-$version-4.2.zip

echo $ota
md5=`md5sum miuigalaxy-v5-sgs3-$version-4.2.zip | cut -d" " -f1`
size=`du -sh md5sum miuigalaxy-v5-sgs3-$version-4.2.zip | cut -c1-4`
data=`date +%-d/%-m/%Y`
LINK_PL="http://91.205.75.29//zdunex25/$version/miuigalaxy-v5-sgs3-$version-4.2.zip"
forum="<a href='http://bit.ly/1as1Xao'>Dyskusja na forum</a>"
MIRROR1_PL="http://goo.im/devs/mikegapinski/miuiv5/4.2.2/m0/miuigalaxy-v5-sgs3-$version-4.2.zip"
#MIRROR2_PL="http://htcfanboys.com/download/acid/files/MIUIv5/$version/miuigalaxy-v5-sgs3-$version-4.2.zip"
echo '[dwl producent="'samsung'" board="'m0'" tytul="Samsung&nbsp;Galaxy&nbsp;S3" android="'4.2.2'" miui="'$version'" data="'$data'" md5="'$md5'" datapl="'$data'" md5pl="'\$md5_ota1'" informacje="'$forum'" status="" statuspl="" link="'$LINK_PL'" linkpl="'\$LINK_OTA1'" rozmiar="'$size'" rozmiarpl="'\$size_ota1'" rodzaj="" mirror1="'$MIRROR1_PL'" mirror2="" ota="'\$OTA1'"]
    
    ' > ../download_v5.txt
read -p "Done, miuigalaxy-v5-sgs3-$version-4.2.zip has been created in root of m0 directory, copy to sd and flash it!"
