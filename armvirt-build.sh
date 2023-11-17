#!/bin/bash

# 打印 info
make info

# 主配置名称
PROFILE="generic"

PACKAGES="
        hostapd-common iw iwinfo \
        kmod-brcmfmac kmod-brcmutil kmod-cfg80211 kmod-mac80211 wpa-cli wpad-basic \
        luci luci-compat luci-lib-ipkg luci-theme-material \
        luci-mod-admin-full luci-mod-network luci-mod-status luci-mod-system  \
        luci-proto-3g luci-proto-ncm  \
        luci-proto-wireguard luci-proto-qmi usb-modeswitch luci-app-ttyd \
        kmod-usb-net-rndis -dnsmasq dnsmasq-full \
        openssh-sftp-server luci-app-openclash luci-app-internet-detector\
        luci-theme-neobirdkawe xmm-modem luci-app-modeminfo luci-app-atinout-mod \ "


make image PROFILE="$PROFILE" PACKAGES="$PACKAGES"
