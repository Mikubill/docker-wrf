cd /root/
geog_hegh_res="http://www2.mmm.ucar.edu/wrf/src/wps_files/geog_high_res_mandatory.tar.gz"
geog_low_res="http://www2.mmm.ucar.edu/wrf/src/wps_files/geog_low_res_mandatory.tar.gz"
curl --location "${geog_hegh_res}" | tar zxf -
curl --location "${geog_low_res}" | tar zxf -
