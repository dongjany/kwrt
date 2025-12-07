git clone https://github.com/dongjany/amlogic.git target/linux/amlogic
patch -p1 < patches/BRCMFMAC_SDIO.patch
patch -p1 < patches/onecloud.patch
curl -sSL https://raw.githubusercontent.com/chenmozhijin/turboacc/luci/add_turboacc.sh -o add_turboacc.sh && bash add_turboacc.sh
git clone https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon
git clone https://github.com/sbwml/luci-app-ramfree.git package/luci-app-ramfree
sed -i 's/192.168.1.1/192.168.2.15/g' package/base-files/files/bin/config_generate
sed -i 's/OpenWrt/OneCloud/g' package/base-files/files/bin/config_generate
sed -i "s/'UTC'/'CST-8'\n        set system.@system[-1].zonename='Asia\/Shanghai'/g" package/base-files/files/bin/config_generate
