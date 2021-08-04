#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
# sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default

# Add nas-packages feed source
echo >> feeds.conf.default
echo 'src-git nas https://github.com/linkease/nas-packages.git;master' >> feeds.conf.default

# Add helloworld feed source
echo >> feeds.conf.default
echo 'src-git helloworld https://github.com/fw876/helloworld.git;master' >> feeds.conf.default

# Add passwall feed source
#git clone https://github.com/xiaorouji/openwrt-passwall.git package/openwrt-packages/luci-app-passwall

# Add dockerman feed source
#git clone https://github.com/lisaac/luci-app-dockerman.git package/openwrt-packages/luci-app-dockerman

#额外软件包
#echo >> feeds.conf.default
#echo 'src-git opentopd  https://github.com/sirpdboy/sirpdboy-package' >> feeds.conf.default
