# arch-install

Before start the install, check if efivars are available with:

ls /sys/firmware/efi

cd entries/arch.conf

title ArchLinux
linux /vmlinuz-linux
initrd /initramfs-linux.img
options root

Testing
