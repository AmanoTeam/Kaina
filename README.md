# Writable MicroSD

Allow Android apps holding the `WRITE_EXTERNAL_STORAGE` permission to read and write on the MicroSD card.

This is accomplished by modifying the `/system/etc/permissions/platform.xml` file to add the group `media_rw` to the `WRITE_EXTERNAL_STORAGE` permission's configuration.

## Supported Android versions

This module was only tested on Android 14, but should work on almost all Android versions. The `platform.xml` file did not suffer any breaking change since Android 4.x.