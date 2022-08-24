#!/bin/sh
# /etc/udpate.sh PrivateRouter Update Script

# Verify we are connected to the Internet
is_connected() {
    ping -q -c3 1.1.1.1 >/dev/null 2>&1
    return $?
}


[ is_connected ] && {

   echo "updating all packages!"

   echo "                                                                      "
   echo " ███████████             ███                         █████            "
   echo "░░███░░░░░███           ░░░                         ░░███             "
   echo " ░███    ░███ ████████  ████  █████ █████  ██████   ███████    ██████ "
   echo " ░██████████ ░░███░░███░░███ ░░███ ░░███  ░░░░░███ ░░░███░    ███░░███"
   echo " ░███░░░░░░   ░███ ░░░  ░███  ░███  ░███   ███████   ░███    ░███████ "
   echo " ░███         ░███      ░███  ░░███ ███   ███░░███   ░███ ███░███░░░  "
   echo " █████        █████     █████  ░░█████   ░░████████  ░░█████ ░░██████ "
   echo "░░░░░        ░░░░░     ░░░░░    ░░░░░     ░░░░░░░░    ░░░░░   ░░░░░░  "
   echo "                                                                      "
   echo "                                                                      "
   echo " ███████████                        █████                             "
   echo "░░███░░░░░███                      ░░███                              "
   echo " ░███    ░███   ██████  █████ ████ ███████    ██████  ████████        "
   echo " ░██████████   ███░░███░░███ ░███ ░░░███░    ███░░███░░███░░███       "
   echo " ░███░░░░░███ ░███ ░███ ░███ ░███   ░███    ░███████  ░███ ░░░        "
   echo " ░███    ░███ ░███ ░███ ░███ ░███   ░███ ███░███░░░   ░███            "
   echo " █████   █████░░██████  ░░████████  ░░█████ ░░██████  █████           "
   echo "░░░░░   ░░░░░  ░░░░░░    ░░░░░░░░    ░░░░░   ░░░░░░  ░░░░░            "

   opkg update
   #Go Go Packages
   opkg install acme luci-app-acme attendedsysupgrade-common attr avahi-dbus-daemon base-files busybox ca-bundle certtool cgi-io curl davfs2 dbus luci-app-uhttpd frpc luci-app-frpc kmod-rtl8xxxu

   opkg install ddns-scripts-services dnsmasq dropbear firewall fstools fuse3-utils fwtool getrandom git glib2 gnupg hostapd-common ip-full ip6tables ipset iptables iptables-mod-ipopt iw iwinfo jshn adblock luci-app-adblock

   opkg install jsonfilter kernel kmod-bluetooth kmod-btmrvl kmod-cfg80211 kmod-crypto-aead kmod-crypto-ccm kmod-crypto-cmac kmod-crypto-ctr kmod-crypto-ecb kmod-crypto-ecdh kmod-crypto-gcm kmod-crypto-gf128

   opkg install kmod-crypto-ghash kmod-crypto-hash kmod-crypto-hmac kmod-crypto-kpp kmod-crypto-lib-blake2s kmod-crypto-lib-chacha20 kmod-crypto-lib-chacha20poly1305 kmod-crypto-lib-curve25519

   opkg install kmod-crypto-lib-poly1305 kmod-crypto-manager kmod-crypto-null kmod-crypto-rng kmod-crypto-seqiv kmod-crypto-sha256 kmod-fuse kmod-gpio-button-hotplug kmod-hid kmod-input-core kmod-input-evdev

   opkg install kmod-ip6tables kmod-ipt-conntrack kmod-ipt-core kmod-ipt-ipopt kmod-ipt-ipset kmod-ipt-nat kmod-ipt-offload kmod-lib-crc-ccitt kmod-lib-crc16 kmod-mac80211 kmod-mmc kmod-mwifiex-sdio luci-compat luci-lib-ipkg

   opkg install kmod-mwlwifi kmod-nf-conntrack kmod-nf-conntrack6 kmod-nf-flow kmod-nf-ipt kmod-nf-ipt6 kmod-nf-nat kmod-nf-reject kmod-nf-reject6 kmod-nfnetlink kmod-nls-base kmod-ppp kmod-pppoe kmod-pppox

   opkg install kmod-regmap-core kmod-slhc kmod-tun kmod-udptunnel4 kmod-udptunnel6 kmod-usb-core kmod-wireguard libatomic1 libattr libavahi-client libavahi-dbus-support libblkid1 libbpf0 libbz2-1.0 libc

   opkg install libcap libcurl4 libdaemon libdbus libelf1 libev libevdev libevent2-7 libexif libexpat libffi libffmpeg-mini libflac libfuse1 libfuse3-3 libgcc1 libgmp10 libgnutls libhttp-parser

   opkg install libid3tag libip4tc2 libip6tc2 libipset13 libiwinfo-data libiwinfo-lua libiwinfo20210430 libjpeg-turbo libjson-c5 liblua5.1.5 liblucihttp-lua liblucihttp0 liblzo2 libmbedtls12 libmnl0 luci-app-ttyd

   opkg install libmount1 libncurses6 libneon libnettle8 libnftnl11 libnghttp2-14 libnl-tiny1 libogg0 libopenssl-conf libopenssl1.1 libowipcalc libpam libpcre libpopt0 libprotobuf-c libpthread libreadline8

   opkg install librt libsmartcols1 libsodium libsqlite3-0 libtasn1 libtirpc libubus-lua libuci-lua libuci20130104 libuclient20201210 libudev-zero liburing libusb-1.0-0 libustream-wolfssl20201210 libuuid1

   opkg install libvorbis libxml2 libxtables12 logd lua luci luci-app-attendedsysupgrade luci-app-ddns luci-app-firewall luci-app-minidlna luci-app-ocserv luci-app-openvpn luci-app-opkg luci-app-samba4

   opkg install luci-app-shadowsocks-libev luci-app-smartdns luci-app-vpn-policy-routing luci-app-vpnbypass luci-app-watchcat luci-app-wireguard luci-base luci-compat luci-i18n-firewall-en

   opkg install luci-i18n-wireguard-en luci-lib-base luci-lib-ip luci-lib-ipkg luci-lib-jsonc luci-lib-nixio luci-mod-admin-full luci-mod-network luci-mod-status luci-mod-system luci-proto-ipv6

   opkg install luci-proto-ppp luci-proto-wireguard luci-theme-bootstrap luci-theme-material luci-theme-openwrt-2020 minidlna mount-utils mtd mwifiex-sdio-firmware mwlwifi-firmware-88w8964

   opkg install netifd ocserv odhcp6c odhcpd-ipv6only openssh-sftp-client openssh-sftp-server openssl-util openvpn-openssl openwrt-keyring opkg owipcalc ppp ppp-mod-pppoe procd procd-seccomp

   opkg install procd-ujail python3-base python3-email python3-light python3-logging python3-openssl python3-pysocks python3-urllib resolveip rpcd rpcd-mod-file rpcd-mod-iwinfo rpcd-mod-luci

   opkg install rpcd-mod-rpcsys rpcd-mod-rrdns rsync samba4-libs samba4-server shadowsocks-libev-config shadowsocks-libev-ss-tunnel smartdns socat socksify sshfs terminfo tor ubi-utils

   opkg install uboot-envtools ubox ubus ubusd uci uclient-fetch uhttpd uhttpd-mod-ubus urandom-seed urngd usbutils usign vpn-policy-routing vpnbypass vpnc-scripts watchcat wg-installer-client wget-ssl

   opkg install wireguard-tools wireless-regdb wpad-basic-wolfssl zlib kmod-usb-storage block-mount samba4-server luci-app-samba4 luci-app-minidlna minidlna kmod-fs-ext4 kmod-fs-exfat e2fsprogs fdisk
   echo "Installing TorGuard Wireguard..."
   opkg install /etc/luci-app-tgwireguard_1.0.1-1_all.ipk

   echo "PrivateRouter update complete!"

   exit 0
} || exit 1
