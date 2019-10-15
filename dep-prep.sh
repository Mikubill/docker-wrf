cd /

CURL="https://curl.haxx.se/download/curl-7.66.0.tar.gz"
ZLIB="http://prdownloads.sourceforge.net/libpng/zlib-1.2.11.tar.gz?download"
LIBPNG="http://prdownloads.sourceforge.net/libpng/libpng-1.6.37.tar.gz?download"
MPICH="http://www.mpich.org/static/downloads/3.3.1/mpich-3.3.1.tar.gz"
JASPER="http://www.ece.uvic.ca/~frodo/jasper/software/jasper-2.0.14.tar.gz"
HDF5="https://s3.amazonaws.com/hdf-wordpress-1/wp-content/uploads/manual/HDF5/HDF5_1_10_5/source/hdf5-1.10.5.tar"
NETCDFC="https://www.unidata.ucar.edu/downloads/netcdf/ftp/netcdf-c-4.7.1.tar.gz"
NETCDFF="https://www.unidata.ucar.edu/downloads/netcdf/ftp/netcdf-fortran-4.5.2.tar.gz"
ICONV="https://ftp.gnu.org/pub/gnu/libiconv/libiconv-1.16.tar.gz"

curl --location "${ICONV}" | tar zxf -
curl --location "${CURL}" | tar zxf -
curl --location "${ZLIB}" | tar zxf -
curl --location "${LIBPNG}" | tar zxf -
curl --location "${MPICH}" | tar zxf -
curl --location "${JASPER}" | tar zxf -
curl --location "${NETCDFC}" | tar zxf -
curl --location "${NETCDFF}" | tar zxf -
curl --location --referer "https://www.hdfgroup.org/downloads/hdf5/source-code/" "${HDF5}" | tar xf -
echo "/usr/lib" >> /etc/ld.so.conf
echo "/usr/local/lib" >> /etc/ld.so.conf
