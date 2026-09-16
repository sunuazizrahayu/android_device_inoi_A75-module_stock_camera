ui_print "- Inoi A75 SXS_Camera port (v1.5-isolate - TANPA CameraExtensionsProxy)"
ui_print "  Tes isolasi: cuma pasang SXS_Camera, buat cek apakah"
ui_print "  CameraExtensionsProxy yang bikin force close atau bukan."
EXIST=`pm path com.android.camera 2>/dev/null`
if [ -n "$EXIST" ]; then
  ui_print "  ! Ditemukan com.android.camera sudah ada di: $EXIST"
fi
ui_print "- Memasang SXS_Camera ke /system/app"
