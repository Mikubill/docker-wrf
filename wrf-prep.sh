#!/bin/sh

apt-get install -y git
which FC
which CC
which CXX
which F77
cd /root/
mkdir /root/work
mkdir /root/work/geog
curl -SL http://www2.mmm.ucar.edu/wrf/src/wps_files/geog_low_res_mandatory.tar.gz | tar -xzC /root/work/geog
curl -SL http://www2.mmm.ucar.edu/wrf/src/wps_files/geog_high_res_mandatory.tar.gz | tar -xzC /root/work/geog
git clone https://github.com/wrf-model/WRF
git clone https://github.com/wrf-model/WPS
