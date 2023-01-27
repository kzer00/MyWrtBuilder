#!/bin/bash

# 打印 info
make info

# 主配置名称
PROFILE="Defaults"

PACKAGES="usb-modeswitch kmod-usb-net-asix-ax88179 kmod-usb-net-asix-asix \
        luci-compat luci-proto-wireguad kmod-usb-net-huawei-cdc-ncm \
        luci-proto-3g luci-proto-ncm  \
        luci-proto-qmi usb-modeswitch \
        atinout modeminfo-serial-xmm kmod-usb-net-rndis \
        dnsmasq-full -dnsmasq htop \
        openssh-sftp-server modeminfo-serial-fibocom luci-theme-material \
        luci-app-modeminfo xmm-modem modeminfo luci-app-ttyd \
        luci-app-atinout-mod luci-app-openclash "

# 一些自定义文件
#FILES="files"

# 禁用 openssh-server 的 sshd 服务和 docker 的 dockerd 服务以防止冲突
#DISABLED_SERVICES="sshd dockerd"

#make image PROFILE="$PROFILE" PACKAGES="$PACKAGES" FILES="$FILES" DISABLED_SERVICES="$DISABLED_SERVICES"
make image PROFILE="$PROFILE" PACKAGES="$PACKAGES"
