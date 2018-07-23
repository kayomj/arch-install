#!/bin/bash

loadkeys br-abnt2
timedatectl set-ntp true

mkfs.fat -F32 /dev/sda5
mkfs.ext4 -F /dev/sda6
mount /dev/sda6 /mnt
mkdir /mnt/boot
mount /dev/sda5 /mnt/boot
cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.bkp
echo "Server = http://archlinux.c3sl.ufpr.br/\$repo/os/\$arch" > /etc/pacman.d/mirrorlist

pacstrap /mnt base base-devel grub-efi-x86_64 efibootmgr intel-ucode os-prober git
genfstab -U /mnt >> /mnt/etc/fstab

echo "mount"
echo "arch-chroot /mnt"
