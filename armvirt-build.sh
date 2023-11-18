#!/bin/bash

# 打印 info
make info

# 主配置名称
PROFILE="generic"

PACKAGES="
        base-files ca-bundle dropbear fstools libc libgcc libustream-mbedtls logd mtd netifd opkg \
        uci uclient-fetch urandom-seed urngd busybox procd procd-ujail procd-seccomp mkf2fs e2fsprogs blkid \
        firewall4 nftables kmod-nft-offload odhcp6c odhcpd-ipv6only ppp ppp-mod-pppoe \
        luci-theme-material \
        luci-proto-ncm  \
        luci-proto-qmi usb-modeswitch \
        kmod-usb-net-rndis -dnsmasq dnsmasq-full \
        openssh-sftp-server luci-app-openclash \
        luci-theme-neobirdkawe  \ "
#FILES="files"

# 禁用 openssh-server 的 sshd 服务和 docker 的 dockerd 服务以防止冲突
#DISABLED_SERVICES="sshd dockerd"

#make image PROFILE="$PROFILE" PACKAGES="$PACKAGES" FILES="$FILES" DISABLED_SERVICES="$DISABLED_SERVICES"

make image PROFILE="$PROFILE" PACKAGES="$PACKAGES"
