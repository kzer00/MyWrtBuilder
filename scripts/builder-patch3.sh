#!/bin/bash

echo "Start Builder Patch !"
echo "Current Path: $PWD"

cd $GITHUB_WORKSPACE/$VENDOR-imagebuilder-$VERSION-sunxi-cortexa53.Linux-x86_64 
     #echo "src/gz custom_generic https://raw.githubusercontent.com/lrdrdn/my-opkg-repo/main/generic " >> repositories.conf
     #echo "src/gz custom_arch https://raw.githubusercontent.com/lrdrdn/my-opkg-repo/main/aarch64_cortex-a53" >> repositories.conf
     #sed -i 's/option check_signature/# option check_signature/g' repositories.conf
    #wget -P files/www/luci-static/resources/view/status/include https://raw.githubusercontent.com/kzer00/repo/main/aarch64_cortex-a53/29_port.js
    #wget -P files/usr/share/rpcd/acl.d/ https://raw.githubusercontent.com/kzer00/repo/main/aarch64_cortex-a53/luci-mod-status-index.json
    wget -P files/etc/uci-defaults/ https://raw.githubusercontent.com/kzer00/repo/main/aarch64_cortex-a53/30_pizero2.sh
    wget -P files/etc/uci-defaults/ https://raw.githubusercontent.com/kzer00/repo/main/aarch64_cortex-a53/90_wifi.sh
    wget -P files/etc/ https://raw.githubusercontent.com/kzer00/hoam/main/amlogic-s9xxx/common-files/rootfs/etc/banner
    wget -P files/etc/ https://raw.githubusercontent.com/kzer00/repo/main/aarch64_cortex-a53/profile
    wget -P files/etc/opkg/ https://raw.githubusercontent.com/kzer00/repo/main/aarch64_cortex-a53/customfeeds.conf
    wget -P files/etc/ https://raw.githubusercontent.com/kzer00/repo/main/aarch64_cortex-a53/shadow
    svn export https://github.com/kzer00/repo/trunk/aarch64_cortex-a53/core /files/etc/openclash/core
    wget -P files/usr/bin https://raw.githubusercontent.com/kzer00/repo/main/aarch64_cortex-a53/sysinfo
    #echo "src/gz custom_arch https://raw.githubusercontent.com/indowrt/indowrt/main/aarch64_cortex-a53" >> /files/etc/opkg/customfeeds.conf 
    echo "src/gz custom_arch https://raw.githubusercontent.com/indowrt/indowrt/main/aarch64_cortex-a53" >> repositories.conf 
    sed -i 's/option check_signature/# option check_signature/g' repositories.conf
