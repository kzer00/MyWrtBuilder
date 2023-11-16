#!/bin/bash

# 打印 info
make info

# 主配置名称
PROFILE="generic"

PACKAGES="
        luci-app-atinout-mod luci-app-openclash "


make image PROFILE="$PROFILE" PACKAGES="$PACKAGES"
