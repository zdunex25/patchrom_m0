#!/bin/bash

pl=$PORT_ROOT/miuipolska/Polish/main

cd $PORT_ROOT/$PORT_PRODUCT/out

mv framework-miui-res framework-miui-res2
$PORT_ROOT/tools/apktool --quiet d -f framework-miui-res.apk
mv -f framework-miui-res2/* framework-miui-res
rm -rf framework-miui-res2
rm -f framework-miui-res.apk

#adjustDpi
dpi=( $(ls framework-miui-res/res/drawable-xhdpi) )

for PNG in "${dpi[@]}"; do
	rm -f framework-miui-res/res/drawable-hdpi/$PNG
	rm -f framework-miui-res/res/drawable-xxhdpi/$PNG
done

rm -rf framework-miui-res/res/drawable-land-hdpi
rm -rf framework-miui-res/res/drawable-largeui-hdpi
rm -rf framework-miui-res/res/drawable-land-xxhdpi
cp -u -r $pl/framework-miui-res.apk/res/* framework-miui-res/res

$PORT_ROOT/tools/apktool --quiet b framework-miui-res framework-miui-res.apk

