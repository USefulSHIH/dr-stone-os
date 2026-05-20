#!/usr/bin/env bash
# shellcheck disable=SC2034

# Dr Stone OS - Profile Definition
iso_name="drstone-os"
iso_label="DRSTONE_"
iso_publisher="Dr Stone OS <https://drstone-os.local>"
iso_application="Dr Stone OS Live/Install ISO"
iso_version=""
install_dir="arch"
buildmodes=('iso')
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito'
            'uefi-ia32.grub.esp' 'uefi-x64.grub.esp'
            'uefi-ia32.grub.eltorito' 'uefi-x64.grub.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'x86' '-b' '1M' '-Xdict-size' '1M')

# File permissions for airootfs
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/etc/gshadow"]="0:0:400"
  ["/root"]="0:0:750"
  ["/root/.automated_script.sh"]="0:0:755"
  ["/usr/local/bin/drstone-menu"]="0:0:755"
  ["/usr/local/bin/drstone-setup"]="0:0:755"
  ["/usr/local/bin/drstone-welcome"]="0:0:755"
)
