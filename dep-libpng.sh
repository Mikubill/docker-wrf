#!/bin/sh

cd /libpng-1.6.37 
CFLAGS="-fPIC -m64 -tp=px" CXXFLAGS="-fPIC -m64 -tp=px" FCFLAGS="-fPIC -m64 -tp=px" CC=pgcc CXX=pgc++ FC=pgfortran ./configure --prefix=/usr/local
make
make install

