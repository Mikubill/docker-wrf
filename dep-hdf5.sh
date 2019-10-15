
cd /hdf5-1.10.5

CFLAGS="-fPIC -O2" CXXFLAGS="-fPIC -O2" CC=pgcc CXX=pgc++ ./configure --prefix=/usr/local --enable-fortran=yes 
make
make install
make clean

cd ..
