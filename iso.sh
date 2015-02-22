#!/bin/sh
set -e
. ./build.sh
 
mkdir -p isodir
mkdir -p isodir/boot
mkdir -p isodir/boot/grub
 
cp sysroot/boot/muxos.kernel isodir/boot/muxos.kernel
cat > isodir/boot/grub/grub.cfg << EOF
menuentry "muxos" {
    multiboot /boot/muxos.kernel
}
EOF
grub-mkrescue -o muxos.iso isodir
