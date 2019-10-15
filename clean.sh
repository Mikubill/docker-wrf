rm -rf /tmp/* /zlib* /libpng* /mpich* /jasper* /hdf5* /netcdf*
rm -f /root/*.sh
apt autoremove -y
ldconfig
