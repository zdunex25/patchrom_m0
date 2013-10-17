#!/bin/bash
#
# $1: dir for original miui app 
# $2: dir for target miui app
#

XMLMERGYTOOL=$PORT_ROOT/tools/ResValuesModify/jar/ResValuesModify

function adjustDpi() {
    xhdpi=( $(ls out/$1/res/drawable-xhdpi) )

    for PNG in "${xhdpi[@]}"; do
        rm -f out/$1/res/drawable-hdpi/$PNG
        rm -f out/$1/res/drawable-xxhdpi/$PNG
    done
#    rm out/$1/res/mipmap-mdpi
#    rm out/$1/res/mipmap-hdpi
#    rm out/$1/res/mipmap-xxhdpi
}

if [ $1 = "AntiSpam" ];then
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Backup" ];then
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Browser" ];then
	adjustDpi $1
	cp -f $2/res/drawable-xhdpi/ic_search_engine_google.png $2/res/drawable-xhdpi/ic_search_engine_baidu.png
	cp -f $2/res/drawable-xhdpi/ic_search_logo_google.png $2/res/drawable-xhdpi/ic_search_logo_baidu.png
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "BugReport" ];then
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Calculator" ];then
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Calendar" ];then
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "CalendarProvider" ];then
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "CloudService" ];then
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Contacts" ];then
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "ContactsProvider" ];then
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "DeskClock" ];then
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "DownloadProvider" ];then
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "DownloadProviderUi" ];then
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Email" ];then
	adjustDpi $1
	sed -i -e 's/main_content\"\"/main_contentq\"/' $2/res/values/ids.xml
	sed -i -e 's/main_content\"\"/main_contentq\"/' $2/res/values/public.xml
	sed -i -e 's/main_content\"/main_contentq/' $2/res/values-sw600dp/styles.xml
	sed -i -e 's/main_content\"/main_contentq/' $2/res/values-sw720dp-port/styles.xml
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Exchange2" ];then
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "FileExplorer" ];then
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "MiuiCompass" ];then
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "MiuiGallery" ];then
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "MiuiHome" ];then
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "MiuiSystemUI" ];then
    adjustDpi $1
    sed -i -e 's/config_maxNotificationIcons\">5/config_maxNotificationIcons\">3/' $2/res/values-sw720dp/integers.xml
    $XMLMERGYTOOL $1/res/values $2/res/values
    $XMLMERGYTOOL $1/res/values-xhdpi $2/res/values-xhdpi
fi

if [ $1 = "MiuiVideoPlayer" ];then
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "MiWallpaper" ];then
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Mms" ];then
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Music" ];then
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "NetworkAssistant" ];then
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Notes" ];then
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "PackageInstaller" ];then
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Phone" ];then
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Provision" ];then
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "QuickSearchBox" ];then
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Settings" ];then
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "SoundRecorder" ];then
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "TelephonyProvider" ];then
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "ThemeManager" ];then
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Transfer" ];then
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "VpnDialogs" ];then
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "WeatherProvider" ];then
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "XiaomiServiceFramework" ];then
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "YellowPage" ];then
	adjustDpi $1
	$XMLMERGYTOOL $1/res/values $2/res/values
fi
