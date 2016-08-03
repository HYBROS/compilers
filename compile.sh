#!/bin/bash

BIN_VER=2.27
GCC_VER=6.1.0

export PREFIX="$PWD"
export TARGET=x86_64-elf
export PATH="$PREFIX/bin:$PATH"

cd build/binutils
../../src/binutils-$BIN_VER/configure --target=$TARGET --prefix="$PREFIX" --with-sysroot --disable-nls --disable-werror
make 
make install

cd ../gcc
../../src/gcc-$GCC_VER/configure --target=$TARGET --prefix="$PREFIX" --disable-nls --enable-languages=c,c++ --without-headers
make all-gcc
make all-target-libgcc
make install-gcc
make install-target-libgcc