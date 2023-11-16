#!/bin/bash

# 打印 info
make info

# 主配置名称
PROFILE="generic"

PACKAGES="base-files ca-bundle dropbear fstools libc libgcc libustream-mbedtls logd mtd netifd opkg uci \
         uclient-fetch urandom-seed urngd busybox procd procd-ujail procd-seccomp mkf2fs e2fsprogs blkid -dnsmasq \
         firewall4 nftables kmod-nft-offload odhcp6c odhcpd-ipv6only ppp ppp-mod-pppoe \
         kmod-amazon-ena kmod-e1000e kmod-vmxnet3 kmod-rtc-rx8025 kmod-i2c-mux-pca954x kmod-gpio-pca953x partx-utils \
         kmod-wdt-sp805 kmod-mvneta kmod-mvpp2 kmod-fsl-dpaa1-net kmod-fsl-dpaa2-net kmod-fsl-enetc-net kmod-dwmac-imx kmod-fsl-fec kmod-thunderx-net \
         kmod-dwmac-rockchip kmod-dwmac-sun8i kmod-phy-aquantia \
         kmod-phy-broadcom kmod-phy-marvell kmod-phy-marvell-10g kmod-sfp kmod-atlantic kmod-bcmgenet kmod-octeontx2-net \     
        usb-modeswitch kmod-usb-net-asix-ax88179 kmod-usb-net-asix \
        luci-compat luci-proto-wireguard kmod-usb-net-huawei-cdc-ncm \
        luci-proto-3g luci-proto-ncm  \
        luci-proto-qmi usb-modeswitch \
        atinout modeminfo-serial-xmm kmod-usb-net-rndis \
        dnsmasq-full htop \
        openssh-sftp-server modeminfo-serial-fibocom luci-theme-material \
        luci-app-modeminfo xmm-modem modeminfo luci-app-ttyd \
        luci-app-atinout-mod luci-app-openclash "

# 一些自定义文件
#FILES="files"

# 禁用 openssh-server 的 sshd 服务和 docker 的 dockerd 服务以防止冲突
#DISABLED_SERVICES="sshd dockerd"

#make image PROFILE="$PROFILE" PACKAGES="$PACKAGES" FILES="$FILES" DISABLED_SERVICES="$DISABLED_SERVICES"
make image PROFILE="$PROFILE" PACKAGES="$PACKAGES"
