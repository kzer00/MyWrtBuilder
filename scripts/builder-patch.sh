#!/bin/bash

echo "Start Builder Patch !"
echo "Current Path: $PWD"

cd $GITHUB_WORKSPACE/$VENDOR-imagebuilder-$VERSION-rockchip-armv8.Linux-x86_64 || exit
     echo "src/gz custom_generic https://raw.githubusercontent.com/lrdrdn/my-opkg-repo/main/generic " >> repositories.conf
     echo "src/gz custom_arch https://raw.githubusercontent.com/lrdrdn/my-opkg-repo/main/aarch64_generic" >> repositories.conf
     sed -i 's/option check_signature/# option check_signature/g' repositories.conf
