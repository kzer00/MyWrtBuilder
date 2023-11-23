#!/bin/bash
curl https://raw.githubusercontent.com/vernesong/OpenClash/core/master/core_version >version.txt
versi=$(awk -F: 'NR==2 {print $1}' version.txt)
echo "Start Clash Core Download !"
echo "Current Path: $PWD"

mkdir -p files/etc/openclash/core
cd files/etc/openclash/core || (echo "Clash core path does not exist! " && exit)
wget https://raw.githubusercontent.com/vernesong/OpenClash/core/master/dev/clash-linux-arm64.tar.gz
tar -zxvf clash-linux-arm64.tar.gz
mv clash clash.bak
rm -rf *.tar.gz
wget https://raw.githubusercontent.com/vernesong/OpenClash/core/master/premium/clash-linux-arm64-$versi.gz
gzip -d clash-*.gz && mv clash-linux-* clash_tun
rm -rf *.gz
#mv clash files/etc/openclash/core/clash_tun
wget https://raw.githubusercontent.com/vernesong/OpenClash/core/master/meta/clash-linux-arm64.tar.gz
tar -zxvf clash-linux-arm64.tar.gz && mv clash clash_meta
#files/etc/openclash/core/clash_meta
rm -rf *.gz
mv clash.bak clash
chmod +x *
