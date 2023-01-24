#!/bin/bash

# 打印 info
make info

# 主配置名称
PROFILE="xunlong_orangepi-r1-plus-lts"

PACKAGES="acpid attr base-files bash bc bind-server blkid block-mount blockd bsdtar  \
        btrfs-progs busybox bzip2 cgi-io chattr comgt comgt-ncm coremark  \
        coreutils coreutils-base64 coreutils-nohup coreutils-truncate curl \
        dosfstools dumpe2fs e2freefrag e2fsprogs exfat-mkfs  \
        f2fs-tools f2fsck fdisk gawk getopt gzip hostapd-common iconv iw iwinfo jq jshn  \
        libjson-script \
        liblucihttp liblucihttp-lua libnetwork losetup lsattr lsblk lscpu mkf2fs  \
        mount-utils openssl-util parted perl-http-date perlbase-file perlbase-getopt  \
        perlbase-time perlbase-unicode perlbase-utf8 pigz ppp  \
        proto-bonding pv rename resize2fs runc subversion-client subversion-libs tar  \
        tini ttyd tune2fs uclient-fetch uhttpd uhttpd-mod-ubus unzip uqmi usb-modeswitch  \
        uuidgen wget-ssl whereis which wwan xfs-fsck xfs-mkfs xz  \
        xz-utils ziptool zoneinfo-asia zoneinfo-core zstd  \
        \
        luci luci-base luci-compat luci-i18n-base-en luci-lib-base  \
        luci-lib-ip luci-lib-ipkg luci-lib-jsonc luci-lib-nixio  \
        luci-mod-admin-full luci-mod-network luci-mod-status luci-mod-system  \
        luci-proto-3g luci-proto-bonding luci-proto-ipip luci-proto-ipv6 luci-proto-ncm  \
        luci-proto-openconnect luci-proto-ppp luci-proto-qmi luci-proto-relay  \
        atinout modeminfo-serial-xmm kmod-usb-net-rndis \
        dnsmasq-full \
        openssh-sftp-server modeminfo-serial-fibocom \
        luci-app-modeminfo xmm-modem modeminfo \
        luci-app-atinout-mod luci-app-openclash "

# 一些自定义文件
#FILES="files"

# 禁用 openssh-server 的 sshd 服务和 docker 的 dockerd 服务以防止冲突
#DISABLED_SERVICES="sshd dockerd"

#make image PROFILE="$PROFILE" PACKAGES="$PACKAGES" FILES="$FILES" DISABLED_SERVICES="$DISABLED_SERVICES"
make image PROFILE="$PROFILE" PACKAGES="$PACKAGES"
