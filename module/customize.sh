if [ "$APATCH" ]; then
    abort "! APatch is unsupported"
fi

set_perm_recursive "$MODPATH/bin" 0 2000 0755 0755

mkdir -p /data/adb/kp-next

# try get package_config from APatch
if [ -f "/data/adb/ap/package_config" ] && [ ! -f "/data/adb/kp-next/package_config" ]; then
    cp "/data/adb/ap/package_config" /data/adb/kp-next/package_config
fi
