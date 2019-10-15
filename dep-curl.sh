
cd /curl-7.66.0
CFLAGS="-fPIC -O2" CXXFLAGS="-fPIC -O2" CC=pgcc CXX=pgc++ ./configure --prefix=/usr/local --libdir=/usr/local/lib
make -j2
# make check
make install
# make clean
cd ..
