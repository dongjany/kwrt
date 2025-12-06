git clone https://github.com/dongjany/amlogic.git target/linux/
patch -p1 < ./BRCMFMAC_SDIO.patch
patch -p1 < ./onecloud.patch
curl -sSL https://raw.githubusercontent.com/chenmozhijin/turboacc/luci/add_turboacc.sh -o add_turboacc.sh && bash add_turboacc.sh
git clone https://github.com/jerrykuku/luci-theme-argon.git package/
