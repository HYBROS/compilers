#!/bin/bash

BIN_VER=2.27
GCC_VER=6.1.0

sudo apt-get update
sudo apt-get install libgmp3-dev libmpfr-dev libisl-dev libcloog-isl-dev  libmpc-dev texinfo

wget http://ftp.gnu.org/gnu/binutils/binutils-$BIN_VER.tar.gz
tar xfzv binutils-$BIN_VER &

wget ftp://ftp.fu-berlin.de/unix/languages/gcc/releases/gcc-$GCC_VER/gcc-$GCC_VER.tar.gz
tar xfzv gcc-$GCC_VER

mv gcc-$GCC_VER src/gcc-$GCC_VER
rm gcc-$GCC_VER.tar.gz

mv binutils-$BIN_VER src/binutils-$BIN_VER
rm binutils-$BIN_VER.tar.gz
