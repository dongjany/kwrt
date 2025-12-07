sed -i 's/192.168.1.1/192.168.2.15/g' package/base-files/files/bin/config_generate
sed -i 's/OpenWrt/OneCloud/g' package/base-files/files/bin/config_generate
sed -i "s/'UTC'/'CST-8'\n        set system.@system[-1].zonename='Asia\/Shanghai'/g" package/base-files/files/bin/config_generate
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile
