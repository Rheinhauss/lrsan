#!/bin/bash

# binary choices
# BASE="http://releases.llvm.org"
# VERN="7.0.0"

# download pre-built package 
# PKGN=clang+llvm-$VERN-$DIST
# TARF=$PKGN.tar.xz
TARF="/share/clang+llvm-7.0.0-x86_64-linux-gnu-ubuntu-16.04.tar.xz"

# LINK=$BASE/$VERN/$TARF
# wget $LINK

# extract to location
tar xvf $TARF
mv $PKGN build

# remove file
# rm $TARF
