#!/bin/sh
set -e
export PATH="$HOME/opt/bin:$PATH"
i686-elf-as boot.s -o boot.o;
i686-elf-gcc -c kernel/kernel.c -o kernel.o -std=gnu99 -ffreestanding -O2 -Wall -Wextra;
i686-elf-gcc -T linker.ld -o muxos.bin -ffreestanding -O2 -nostdlib boot.o kernel.o -lgcc;
mkdir -p isodir/boot/grub;
cp muxos.bin isodir/boot/muxos.bin;
cp grub.cfg isodir/boot/grub/grub.cfg;
grub-mkrescue -o muxos.iso isodir;
