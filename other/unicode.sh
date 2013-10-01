#!/system/xbin/busybox sh
echo 'Przywracanie ogonkow w sms..'
mount -o rw,remount /system
cp -f /system/usr/extras/Mms.apk /system/app/Mms.apk
chmod 644 /system/app/Mms.apk
mount -o ro,remount /system
echo 'Wcisnij ENTER lub recznie zrestartuj urzadzenie.'
read
reboot
