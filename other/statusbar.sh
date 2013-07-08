#!/system/xbin/busybox sh
echo 'Installing original layout..'
mount -o rw,remount /system
cp -f /system/usr/extras/MiuiSystemUI.apk /system/app/MiuiSystemUI.apk
chmod 644 /system/app/MiuiSystemUI.apk
mount -o ro,remount /system
echo 'Press ENTER to reboot or do it yourself.'
read
reboot
