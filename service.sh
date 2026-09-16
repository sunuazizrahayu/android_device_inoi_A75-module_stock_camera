#!/system/bin/sh

sleep 15

PKG=com.android.camera

# Hanya grant permission dangerous, sesuai baseline stock (dumpsys package
# di stock menunjukkan signature|privileged permission SELALU granted=false
# walau app cuma di /system/app biasa -- app tidak butuh itu untuk berfungsi)
pm grant $PKG android.permission.CAMERA
pm grant $PKG android.permission.RECORD_AUDIO
pm grant $PKG android.permission.ACCESS_FINE_LOCATION
pm grant $PKG android.permission.ACCESS_COARSE_LOCATION
pm grant $PKG android.permission.READ_MEDIA_IMAGES
pm grant $PKG android.permission.READ_MEDIA_VIDEO
pm grant $PKG android.permission.READ_MEDIA_AUDIO
pm grant $PKG android.permission.WRITE_EXTERNAL_STORAGE
pm grant $PKG android.permission.READ_EXTERNAL_STORAGE
pm grant $PKG android.permission.ACCESS_MEDIA_LOCATION

appops set $PKG READ_EXTERNAL_STORAGE allow
appops set $PKG WRITE_EXTERNAL_STORAGE allow
appops set $PKG ACCESS_MEDIA_LOCATION allow
appops set $PKG MANAGE_EXTERNAL_STORAGE allow
