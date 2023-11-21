#!/bin/bash

# 打印 info
make info

# 主配置名称
PROFILE="xunlong_orangepi-zero-plus"

PACKAGES="
        hostapd-common iw iwinfo luci-app-tinyfm \
        kmod-cfg80211 kmod-mac80211 wpa-cli wpad-basic \
        luci luci-compat luci-lib-ipkg luci-theme-material \
        luci-mod-admin-full luci-mod-network luci-mod-status luci-mod-system  \
        luci-proto-3g luci-proto-ncm usbutils luci-compat \
        luci-proto-wireguard luci-proto-qmi usb-modeswitch luci-app-ttyd \
        kmod-usb-net-rndis -dnsmasq dnsmasq-full \
        openssh-sftp-server luci-proto-xmm luci-app-openclash luci-app-openclash\
        luci-theme-neobirdkawe xmm-modem luci-app-modeminfo "

# 一些自定义文件
FILES="files"

# 禁用 openssh-server 的 sshd 服务和 docker 的 dockerd 服务以防止冲突
#DISABLED_SERVICES="sshd dockerd"

#make image PROFILE="$PROFILE" PACKAGES="$PACKAGES" FILES="$FILES" DISABLED_SERVICES="$DISABLED_SERVICES"
make image PROFILE="$PROFILE" PACKAGES="$PACKAGES" FILES="$FILES"
