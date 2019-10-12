#!/bin/sh

cd /netcdf-c-4.7.1 
CPP=cpp CFLAGS="-fPIC -m64 -tp=px" CXXFLAGS="-fPIC -m64 -tp=px" FCFLAGS="-fPIC -m64 -tp=px" CC=pgcc CXX=pgc++ FC=pgfortran  ./configure --prefix=/usr
make -j4 
make install 

cd /netcdf-fortran-4.5.2 
CPP=cpp CFLAGS="-fPIC -m64 -tp=px" CXXFLAGS="-fPIC -m64 -tp=px" FCFLAGS="-fPIC -m64 -tp=px" CC=pgcc CXX=pgc++ FC=pgfortran  ./configure --prefix=/usr
make -j4 
make install

