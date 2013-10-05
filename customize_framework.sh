#!/bin/bash
# $1: dir for miui
# $2: dir for original

APKTOOL="$PORT_ROOT/tools/apktool --quiet"
BUILD_OUT=out

SEP_FRAME="framework_ext_miui"

if [ $2 = "$BUILD_OUT/framework" ]
then
    #replace wrong id of networkAttributes to fix "java.lang.ArrayIndexOutOfBoundsException: length=1; index=1"
    sed -i -e 's/1070015/1070017/' $BUILD_OUT/framework/smali/com/android/internal/telephony/gsm/GsmDataConnectionTracker.smali
    #fix wrong ids of overscroll_edge and overscroll_glow
    sed -i -e 's/1080441/1080438/' $BUILD_OUT/framework/smali/android/widget/EdgeEffect\$Injector.smali
    sed -i -e 's/1080442/1080439/' $BUILD_OUT/framework/smali/android/widget/EdgeEffect\$Injector.smali
    #fix wrong id of "method protected updateSpnDisplay"
    sed -i -e 's/1040300/1040311/' $BUILD_OUT/framework/smali/com/android/internal/telephony/gsm/GsmServiceStateTracker.smali
    #create secondary framework to fix "java.lang.RuntimeException: method index is too large" while compiling
    mkdir -p "$BUILD_OUT/$SEP_FRAME/smali/android"
    mv "$BUILD_OUT/framework/smali/android/widget" "$BUILD_OUT/$SEP_FRAME/smali/android"
fi
