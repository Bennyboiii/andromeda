#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="andromeda-rootfs"
iso_label="ANDROMEDA_$(date +%Y%m)"
iso_publisher="Stardust XR <https://stardustxr.org>"
iso_application="Andromeda - XR Development Environment"
iso_version="$(date +%Y.%m.%d)"
install_dir="arch"
buildmodes=('iso')
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito'
           'uefi-ia32.grub.esp' 'uefi-x64.grub.esp'
           'uefi-ia32.grub.eltorito' 'uefi-x64.grub.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'x86' '-b' '1M' '-Xdict-size' '1M')
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/etc/gshadow"]="0:0:400"
  ["/etc/sudoers"]="0:0:440"
  ["/etc/doas.conf"]="0:0:440"
  ["/root"]="0:0:750"
  ["/root/.automated_script.sh"]="0:0:755"
  ["/usr/local/bin/choose-mirror"]="0:0:755"
  ["/usr/local/bin/Installation_guide"]="0:0:755"
  ["/usr/local/bin/livecd-sound"]="0:0:755"
  ["/usr/bin/wivrn-server"]="0:0:755"
  ["/usr/bin/stardust-xr-server"]="0:0:755"
  ["/usr/bin/loginservice"]="0:0:755"
  ["/usr/bin/loginui"]="0:0:755"
)
