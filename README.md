# arch-install

Before start the install, check if efivars are available with:

ls /sys/firmware/efi

After the first install "pacstrap /mnt" use:

bootctl install
cd /boot/loader/loader.conf
default archtimeout 4

cd entries/arch.conf

title ArchLinux
linux /vmlinuz-linux
initrd /initramfs-linux.img
options root

Testing
