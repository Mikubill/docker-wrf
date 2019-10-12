#!/bin/sh

cd /libpng-1.6.37 
CPP=cpp CFLAGS="-fPIC -m64 -tp=px" CXXFLAGS="-fPIC -m64 -tp=px" FCFLAGS="-fPIC -m64 -tp=px" CC=pgcc CXX=pgc++ FC=pgfortran ./configure --prefix=/usr 
make -j4 
make install 
