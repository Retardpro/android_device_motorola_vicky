#!/sbin/sh

sleep 5

# Unmount
umount /system_root
umount /system_ext
umount /product
umount /vendor_dlkm
umount /vendor

# Mount system and vendor once to fix permissions
mount /dev/block/mapper/system /system_root
mount /dev/block/mapper/system_ext /system_ext
mount /dev/block/mapper/product /product
mount /dev/block/mapper/vendor_dlkm /vendor_dlkm
mount /dev/block/mapper/vendor /vendor

# Remount as read-write
mount -o remount,rw /system_root
mount -o remount,rw /system_ext
mount -o remount,rw /product
mount -o remount,rw /vendor_dlkm
mount -o remount,rw /vendor

# Unmount
#umount /system_root
#umount /system_ext
#umount /product
#umount /vendor_dlkm
#umount /vendor

exit 0
