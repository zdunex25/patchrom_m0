#!/bin/bash
# $1: dir for miui overlay framework-miui-res
# $2: dir for target framework-miui-res

pl=$PORT_ROOT/miuipolska/Polish/main
xhdpi=( $(ls $2/drawable-xhdpi) )

for PNG in "${xhdpi[@]}"; do
     rm -f $2/drawable-hdpi/$PNG
     rm -f $2/drawable-xxhdpi/$PNG
done

rm -rf $2/drawable-land-hdpi
rm -rf $2/drawable-largeui-hdpi
rm -rf $2/drawable-land-xxhdpi
cp -u -r $pl/framework-miui-res.apk/res/* $2