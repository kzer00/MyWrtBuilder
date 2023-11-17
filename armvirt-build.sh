#!/bin/bash

# 打印 info
make info

# 主配置名称
PROFILE="generic"

PACKAGES="
        hostapd-common iw iwinfo \
        kmod-brcmfmac kmod-brcmutil kmod-cfg80211 kmod-mac80211 wpad-basic \
        luci luci-compat luci-lib-ipkg luci-theme-material \
        luci-mod-admin-full luci-mod-network luci-mod-status luci-mod-system  \
        lluci-proto-ncm  \
        luci-proto-qmi usb-modeswitch \
        kmod-usb-net-rndis -dnsmasq dnsmasq-full \
        openssh-sftp-server luci-app-openclash \
        luci-theme-neobirdkawe  \ "
#FILES="files"

# 禁用 openssh-server 的 sshd 服务和 docker 的 dockerd 服务以防止冲突
#DISABLED_SERVICES="sshd dockerd"

#make image PROFILE="$PROFILE" PACKAGES="$PACKAGES" FILES="$FILES" DISABLED_SERVICES="$DISABLED_SERVICES"

make image PROFILE="$PROFILE" PACKAGES="$PACKAGES"
