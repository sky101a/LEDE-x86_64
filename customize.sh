#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: kenzo
#=================================================
#1. Modify default IP
sed -i 's/192.168.1.1/192.168.31.189/g' openwrt/package/base-files/files/bin/config_generate

#2. 自定义设置
#cp -f package/litte/default-settings package/lean/default-settings/files/zzz-default-settings
#cp -f package/litte/banner package/base-files/files/etc/banner
#cp -f package/litte/Leandiffconfig diffconfig && cp diffconfig .config && make defconfig
#./scripts/feeds update -a && ./scripts/feeds install -a && ./scripts/feeds install -a
sed -i "/CYXluq4wUazHjmCDBCqXF/d" package/lean/default-settings/files/zzz-default-settings
sed -i '/set luci.main.mediaurlbase=\/luci-static\/bootstrap/d' feeds/luci/themes/luci-theme-bootstrap/root/etc/uci-defaults/30_luci-theme-bootstrap
