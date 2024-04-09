#!/bin/bash

# 打印 info
make info

# 主配置名称
PROFILE="xunlong_orangepi-r1-plus-lts"

PACKAGES="
        luci-proto-3g luci-proto-xmm luci-proto-ipip luci-proto-ipv6 luci-proto-ncm  \
        luci-proto-openconnect luci-proto-ppp luci-proto-qmi luci-proto-relay  \
        atinout modeminfo-serial-xmm kmod-usb-net-rndis \
        -dnsmasq dnsmasq-full luci-compat luci \
        openssh-sftp-server modeminfo-serial-fibocom luci-theme-material \
        luci-app-modeminfo xmm-modem modeminfo \
        luci-app-atinout-mod luci-app-openclash "

# 一些自定义文件
#FILES="files"

# 禁用 openssh-server 的 sshd 服务和 docker 的 dockerd 服务以防止冲突
#DISABLED_SERVICES="sshd dockerd"

#make image PROFILE="$PROFILE" PACKAGES="$PACKAGES" FILES="$FILES" DISABLED_SERVICES="$DISABLED_SERVICES"
make image PROFILE="$PROFILE" PACKAGES="$PACKAGES"
