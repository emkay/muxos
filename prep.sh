#!/bin/sh
set -e
export PREFIX="$HOME/opt/"
export TARGET=i686-elf
export PATH="$PREFIX/bin:$PATH"

mkdir -p $HOME/src

# binutils
cd $HOME/src

if [ ! -d "binutils-2.25" ]; then
    curl http://ftp.gnu.org/gnu/binutils/binutils-2.25.tar.gz > binutils-2.25.tar.gz;
    tar xfz binutils-2.25.tar.gz;

    rm binutils-2.25.tar.gz;
    mkdir -p build-binutils
    cd build-binutils
    ../binutils-2.25/configure --target=$TARGET --prefix="$PREFIX" --with-sysroot --disable-nls --disable-werror
    make
    make install
fi

# gcc
cd $HOME/src

if [ ! -d "gcc-4.9.2" ]; then
    curl http://www.netgull.com/gcc/releases/gcc-4.9.2/gcc-4.9.2.tar.gz > gcc-4.9.2.tar.gz;
    tar xfz gcc-4.9.2.tar.gz;

    rm gcc-4.9.2.tar.gz;
    mkdir -p build-gcc
    cd build-gcc
    ../gcc-4.9.2/configure --target=$TARGET --prefix="$PREFIX" --disable-nls --enable-languages=c,c++ --without-headers
    make all-gcc
    make all-target-libgcc
    make install-gcc
    make install-target-libgcc
fi
