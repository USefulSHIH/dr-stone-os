#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="drstone-os"
iso_label="DRSTONE_OS"
iso_publisher="Dr Stone OS <https://drstone-os.local>"
iso_application="Dr Stone OS Live/Install ISO"
iso_version="2026.05.20"
install_dir="arch"
buildmodes=("iso")
bootmodes=("bios.syslinux" "uefi.grub")
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=("-comp" "xz" "-Xbcj" "x86" "-b" "1M" "-Xdict-size" "1M")

file_permissions=(
  ["/usr/local/bin/drstone-menu"]="0:0:755"
)