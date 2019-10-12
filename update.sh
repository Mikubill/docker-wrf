#!/bin/sh

apt-get update
apt-get -y install apt-utils
apt-get -y upgrade
apt-get purge -y fort77 gfortran mpich libmpich-dev mpich* netcdf* hdf5*
apt-get install -y wget curl git g++ tcsh perl m4 make file libcurl4-openssl-dev cmake
apt-get install -y zlib1g zlib1g-dev libnetcdf-dev libnetcdff-dev libjpeg-dev libpng-dev
