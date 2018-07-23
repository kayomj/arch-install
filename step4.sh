#!/bin/bash
echo "
[multilib]
Include = /etc/pacman.d/mirrorlist" | sudo tee -a /etc/pacman.conf

echo "
[archlinuxfr]
SigLevel = Never
Server = http://repo.archlinux.fr/\$arch" | sudo tee -a /etc/pacman.conf

sudo pacman -Sy  mesa xf86-video-intel bumblebee lib32-virtualgl lib32-nvidia-utils
#nvidia nvidia-utils
sudo usermod -aG bumblebee kayo && sudo systemctl enable bumblebeed.service

sudo pacman -Syu yaourt && yaourt -Syu

// INSTALL BROWSERS //
sudo pacman -S firefox

PACKAGE="kcalc ktorrent yakuake kget kopete amarok kdeconnect kompare ksysguard latte-dock korganizer kmail"

gpg --recv-keys --keyserver hkp://18.9.60.141 5CC908FDB71E12C2

sudo pacman -Sy exfat-utils fuse-exfat a52dec faac faad2 flac jasper lame libdca libdv gst-libav libmad libmpeg2 libtheora libvorbis libxv wavpack x264 xvidcore flashplugin libdvdcss libdvdread libdvdnav dvd+rw-tools dvdauthor dvgrab

sudo pacman -S zsh vlc virtualbox youtube-dl audacity meld htop docker docker-compose atom mysql-workbench steam git xdotool pulseaudio-bluetooth tlp tlp-rdw $PACKAGE

sudo usermod -aG docker $USER && sudo usermod -aG vboxusers $USER && sudo modprobe vboxdrv && sudo systemctl enable tlp && sudo systemctl start tlp && sudo systemctl enable docker

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#yaourt -S spotify 
yaourt -S neofetch-git 
