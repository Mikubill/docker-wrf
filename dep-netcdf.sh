#!/bin/sh

cd /netcdf-c-4.7.1 
CC="pgcc" CFLAGS="-O3 -fPIC" FC="pgf90" FCFLAGS="-O3 -fPIC" CXX="pgc++" CXXFLAGS="-O3 -fPIC" CPPFLAGS=-I/usr/local/include LDFLAGS=-L/usr/local/lib ./configure --prefix=/usr/local --disable-dap --with-zlib=/usr/local --libdir=/usr/local/lib
make
make check
make install
make clean

cd /netcdf-fortran-4.5.2 
NCDIR=/usr/local LD_LIBRARY_PATH="/usr/local/lib:/usr/lib" CC="pgcc" CFLAGS="-O3 -fPIC" FC="pgf90" FCFLAGS="-O3 -fPIC" CXX="pgc++" CXXFLAGS="-O3 -fPIC" CPPFLAGS=-I/usr/local/include LDFLAGS=-L/usr/local/lib ./configure --prefix=/usr/local --disable-dap --with-zlib=/usr/local --libdir=/usr/local/lib --includedir=/usr/local/include
make
make check
make install
make clean
