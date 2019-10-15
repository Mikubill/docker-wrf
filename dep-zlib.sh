#!/bin/sh

cd /zlib-1.2.11
sed -i 's/try $CC -c $CFLAGS $test.c;/true;/g' configure
CFLAGS="-fPIC -m64" CXXFLAGS="-fPIC -m64 -O3" FCFLAGS="-fPIC -m64" CC=pgcc CXX=pgc++ FC=pgfortran  ./configure --prefix=/usr/local --sharedlibdir=/usr/local/lib
make
make check
make install 
make clean
