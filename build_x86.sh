#!/bin/bash

#Documentation: https://openwrt.org/docs/guide-user/additional-software/imagebuilder

OUTPUT="$(pwd)/images"
BUILD_VERSION="21.02.3"
BUILDER="https://downloads.openwrt.org/releases/${BUILD_VERSION}/targets/x86/64/openwrt-imagebuilder-${BUILD_VERSION}-x86-64.Linux-x86_64.tar.xz"
KERNEL_PARTSIZE=128 #Kernel-Partitionsize in MB
ROOTFS_PARTSIZE=4096 #Rootfs-Partitionsize in MB
BASEDIR=$(dirname "$0")

# download image builder
if [ ! -f "${BUILDER##*/}" ]; then
	wget "${BUILDER}"
	tar xJvf "${BUILDER##*/}"
fi

mkdir "${OUTPUT}"
cd openwrt-*/

# list all targets for this image builder, consider 'make help' as well
# make info

# clean previous images
make clean

# Packages are added if no prefix is given, '-packaganame' does not integrate a package
sed -i "s/CONFIG_TARGET_KERNEL_PARTSIZE=.*/CONFIG_TARGET_KERNEL_PARTSIZE=$KERNEL_PARTSIZE/g" .config
sed -i "s/CONFIG_TARGET_ROOTFS_PARTSIZE=.*/CONFIG_TARGET_ROOTFS_PARTSIZE=$ROOTFS_PARTSIZE/g" .config

make image PROFILE="generic" \
           PACKAGES="kmod-rt2800-usb rt2800-usb-firmware kmod-cfg80211 kmod-lib80211 kmod-mac80211 kmod-rtl8192cu \
                     docker docker-compose dockerd luci-app-dockerman luci-lib-docker \
                     base-files block-mount fdisk luci-app-minidlna minidlna samba4-server \
                     samba4-libs luci-app-samba4 wireguard-tools luci-app-wireguard \
                     openvpn-openssl luci-app-openvpn watchcat openssh-sftp-client \
                     luci-base luci-ssl luci-mod-admin-full luci-theme-bootstrap \
                     kmod-usb-storage kmod-usb-ohci kmod-usb-uhci e2fsprogs fdisk resize2fs \
                     htop debootstrap luci-compat luci-lib-ipkg dnsmasq luci-app-ttyd" \
           FILES="${BASEDIR}/files/" \
           BIN_DIR="${OUTPUT}"
