#!/system/xbin/busybox sh

# DooMLoRD: enabling init.d support
/system/bin/sysinit
busybox run-parts /system/etc/init.d/
