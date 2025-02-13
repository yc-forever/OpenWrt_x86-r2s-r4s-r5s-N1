#!/bin/bash

shopt -s extglob

SHELL_FOLDER=$(dirname $(readlink -f "$0"))

rm -rf package/boot/uboot-envtools package/firmware/ipq-wifi target/linux/qualcommax package/kernel/mac80211 package/kernel/qca-ssdk

git_clone_path main https://github.com/openwrt/openwrt package/boot/uboot-envtools package/firmware/ipq-wifi target/linux/qualcommax package/kernel/mac80211 package/kernel/qca-ssdk

git_clone_path f76b846eea288be452be070413353185e7abe822 https://github.com/openwrt/openwrt target/linux/qualcommax