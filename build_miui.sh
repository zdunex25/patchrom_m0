#!/bin/bash
cd ../..
cd patchromv542
. build/envsetup.sh -p m0
cd m0
mkdir AntiSpam Backup BugReport Calculator Calendar CalendarProvider CloudService Contacts ContactsProvider DeskClock DownloadProvider DownloadProviderUi Email FileExplorer MiuiCompass MiuiGallery MiuiVideo MiWallpaper NetworkAssistant2 Notes PackageInstaller PaymentService Provision SoundRecorder TelephonyProvider Transfer VpnDialogs Weather WeatherProvider XiaomiServiceFramework YellowPage temp
cd temp

'../../tools/apktool' --quiet d -f '../../miui/XHDPI/system/app/LBESEC_MIUI.apk'
cp -u -r ../../miuipolska/Polish/main/LBESEC_MIUI.apk/* LBESEC_MIUI
'../../tools/apktool' --quiet b -f 'LBESEC_MIUI' '../other/unsigned-LBESEC_MIUI.apk'

cd ..
rm -r temp
make fullota

if [ -f "out/fullota.zip" ];
then
unzip -q out/fullota.zip -d out/temp
echo -e "\nPreparing flashable zips.."

x=`date +%Y`
y=`date +.%-m.%-d`
z=${x: -1:1}
version=$z$y
time=`date +%c`
utc=`date +%s`

cp -f other/updater-script-rom out/temp/META-INF/com/google/android/updater-script

sed -i -e "s/ro\.build\.date=.*/ro\.build\.date=$time/g" out/temp/system/build.prop
sed -i -e "s/ro\.build\.date\.utc=.*/ro\.build\.date\.utc=$utc/g" out/temp/system/build.prop
sed -i -e "s/ro\.build\.version\.incremental=.*/ro\.build\.version\.incremental=$version/g" out/temp/system/build.prop
sed -i -e "s/ro\.product\.mod_device=.*/ro\.product\.mod_device=m0_z25/g" out/temp/system/build.prop

java -jar 'other/signapk.jar' 'other/testkey.x509.pem' 'other/testkey.pk8' "other/unsigned-LBESEC_MIUI.apk" "other/signed-LBESEC_MIUI.apk"
'other/zipalign' -f 4 "other/signed-LBESEC_MIUI.apk" "other/LBESEC_MIUI.apk"
mv -f other/LBESEC_MIUI.apk out/temp/system/app/LBESEC_MIUI.apk

find other -name "unsigned-*" | xargs rm -f
find other -name "signed-*" | xargs rm -f

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

cd out/temp

rm META-INF/CERT.RSA
rm META-INF/CERT.SF
rm META-INF/MANIFEST.MF
zip -q -r "../../unsigned-miuigalaxy-v5-sgs3-$version-4.2.zip" 'data' 'META-INF' 'system' 'boot.img'
cd ../..
fi
. ../build/envsetup.sh
cd m0

rmdir AntiSpam Backup BugReport Calculator Calendar CalendarProvider CloudService Contacts ContactsProvider DeskClock DownloadProvider DownloadProviderUi Email FileExplorer MiuiCompass MiuiGallery MiuiVideo MiWallpaper NetworkAssistant2 Notes PackageInstaller PaymentService Provision SoundRecorder TelephonyProvider Transfer VpnDialogs Weather WeatherProvider XiaomiServiceFramework YellowPage
find other -name "unsigned-*" | xargs rm -f
make clean
echo Signing rom
java -jar 'other/signapk.jar' 'other/testkey.x509.pem' 'other/testkey.pk8' "unsigned-miuigalaxy-v5-sgs3-$version-4.2.zip" "miuigalaxy-v5-sgs3-$version-4.2.zip"
rm -r unsigned-miuigalaxy-v5-sgs3-$version-4.2.zip

md5=`md5sum miuigalaxy-v5-sgs3-$version-4.2.zip | cut -d" " -f1`
size=`du -sh miuigalaxy-v5-sgs3-$version-4.2.zip | cut -c1-4`
data=`date +%-d/%-m/%Y`
LINK_PL="http://91.205.75.29//zdunex25/$version/miuigalaxy-v5-sgs3-$version-4.2.zip"
forum="<a href='http://bit.ly/1as1Xao'>Dyskusja na forum</a>"
MIRROR1_PL="https://s.basketbuild.com/devs/ZduneX25/miuiv5/m0/"
#MIRROR2_PL="http://htcfanboys.com/download/acid/files/MIUIv5/$version/miuigalaxy-v5-sgs3-$version-4.2.zip"
echo '[dwl producent="'samsung'" board="'m0'" tytul="Samsung&nbsp;Galaxy&nbsp;S3" android="'4.2.2'" miui="'$version'" data="'$data'" md5="'$md5'" informacje="'$forum'" status="" link="'$LINK_PL'" rozmiar="'$size'" mirror1="'$MIRROR1_PL'" mirror2="" rodzaj="'pelna'"]
    
    ' >> ../download_v5.txt

if [ -f "miuigalaxy-v5-sgs3-$version-4.2.zip" ];
then
echo -e "\nPreparing OTA zip.."
bash build_ota_m0.sh
fi

grep -v 'aapt: warning: string*' 'miui_log.log' >> 'miui_log_s3.log'
rm miui_log.log
read -p "Done, miuigalaxy-v5-sgs3-$version-4.2.zip has been created in root of m0 directory, copy to sd and flash it!"
