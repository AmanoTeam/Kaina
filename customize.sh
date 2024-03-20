#!/system/bin/sh

a='/system/etc/permissions/platform.xml'
b="${MODPATH}/system/etc/permissions/platform.xml"

ui_print "- Copying platform.xml file from '${a}' to '${b}'"
cp "${a}" "${b}"

ui_print "- Applying changes to '${b}'"
sed -i 's|<permission name="android.permission.WRITE_EXTERNAL_STORAGE" />|<permission name="android.permission.WRITE_EXTERNAL_STORAGE" >\n        <group gid="sdcard_rw" />\n        <group gid="media_rw" />\n    </permission>|g' "${b}"
