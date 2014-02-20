#!/bin/bash
#
# $1: dir for original miui app 
# $2: dir for target miui app
#

XMLMERGYTOOL=$PORT_ROOT/tools/ResValuesModify/jar/ResValuesModify
GIT_APPLY=$PORT_ROOT/tools/git.apply

function appendPart() {
    for file in `find $1/smali -name *.part`
    do
		filepath=`dirname $file`
		filename=`basename $file .part`
		dstfile="out/$filepath/$filename"
        cat $file >> $dstfile
    done
}

if [ $1 = "AntiSpam" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Backup" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Bluetooth" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Browser" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "BugReport" ];then
	sed -i -e 's/<category android:name=\"android.intent.category.LAUNCHER\" \/>/<!--category android:name=\"android.intent.category.LAUNCHER\" \/-->/' out/$1/AndroidManifest.xml
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Calculator" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Calendar" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "CalendarProvider" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "CloudService" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Contacts" ];then
	sed -i -e 's/<item android:id=\"@id\/menu_yellowpage_order\" android:title=\"@string\/yellowpage_navigation_menu_order\" \/>/<!--item android:id=\"@id\/menu_yellowpage_order\" android:title=\"@string\/yellowpage_navigation_menu_order\" \/-->/' out/$1/res/menu/people_options.xml
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "ContactsProvider" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "DeskClock" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "DownloadProvider" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "DownloadProviderUi" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Email" ];then
	sed -i -e 's/main_content\"\"/main_contentq\"/' $2/res/values/ids.xml
	sed -i -e 's/main_content\"\"/main_contentq\"/' $2/res/values/public.xml
	sed -i -e 's/main_content\"/main_contentq/' $2/res/values-sw600dp/styles.xml
	sed -i -e 's/main_content\"/main_contentq/' $2/res/values-sw720dp-port/styles.xml
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Exchange2" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "FileExplorer" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "MiuiCompass" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "MiuiGallery" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "MiuiHome" ];then
	sed -i -e 's/<item>4x5<\/item>/<item>4x5<\/item>\
        <item>5x5<\/item>/' out/$1/res/values/arrays.xml
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "MiuiSystemUI" ];then
    $XMLMERGYTOOL $1/res/values $2/res/values
    $XMLMERGYTOOL $1/res/values-xhdpi $2/res/values-xhdpi
    appendPart $1
fi

if [ $1 = "MiuiVideo" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "MiWallpaper" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Mms" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Music" ];then
	sed -i 's#@string/app_class#com.miui.player.Application#g' out/$1/AndroidManifest.xml
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "NetworkAssistant" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Notes" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "PackageInstaller" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "PaymentService" ];then
	sed -i -e 's/<category android:name=\"android.intent.category.LAUNCHER\" \/>/<!--category android:name=\"android.intent.category.LAUNCHER\" \/-->/' out/$1/AndroidManifest.xml
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Phone" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
	appendPart $1
fi

if [ $1 = "Provision" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "QuickSearchBox" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Settings" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "SoundRecorder" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Stk" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "TelephonyProvider" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "ThemeManager" ];then
#    cp $1/*.part out/
#    cd out
#    $GIT_APPLY ThemeManager.part
#    cd ..
#    for file in `find $2 -name *.rej`
#    do
#	echo "Fatal error: ThemeManager patch fail"
#        exit 1
#    done
#
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Transfer" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "VpnDialogs" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Weather" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "WeatherProvider" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "XiaomiServiceFramework" ];then
	sed -i -e 's/<category android:name=\"android.intent.category.LAUNCHER\" \/>/<!--category android:name=\"android.intent.category.LAUNCHER\" \/-->/' out/$1/AndroidManifest.xml
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "YellowPage" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
fi
