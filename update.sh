#!/bin/sh

apt-get update
apt-get -y install apt-utils
apt-get -y upgrade
apt-get purge -y fort77 gfortran mpich libmpich-dev mpich* netcdf* hdf5*
# apt-get install -y build-essential gfortran libcurl4-openssl-dev
apt-get install -y libcurl4-openssl-dev wget curl git g++ tcsh perl m4 make file cmake
# apt-get install -y libjpeg-dev zlib1g zlib1g-dev
# apt-get install -y hdf5-tools hdf5-helpers libhdf5-103 libhdf5-cpp-103 libhdf5-dev libhdf5-java libnetcdf-pnetcdf-dev libnetcdff-dev libpdl-netcdf-perl pnetcdf-bin zlib1g zlib1g-dev libjpeg-dev libpng-dev

echo "/usr/lib/" >> /etc/ld.so.conf
echo "/usr/local/lib/" >> /etc/ld.so.conf
echo "/opt/pgi/linux86-64/19.4/lib " >> /etc/ld.so.conf
ldconfig
