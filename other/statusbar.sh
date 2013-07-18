#!/system/xbin/busybox sh
echo 'Przywracanie domyslnego ukladu..'
mount -o rw,remount /system
cp -f /system/usr/extras/MiuiSystemUI.apk /system/app/MiuiSystemUI.apk
chmod 644 /system/app/MiuiSystemUI.apk
mount -o ro,remount /system
echo 'Wcisnij ENTER lub recznie zrestartuj urzadzenie.'
read
reboot
