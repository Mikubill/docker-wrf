cd /libiconv-1.16 
CC="pgcc" CFLAGS="-O3 -fPIC" FC="pgf90" FCFLAGS="-O3 -fPIC" CXX="pgc++" CXXFLAGS="-O3 -fPIC" CPPFLAGS=-I/usr/local/include LDFLAGS=-L/usr/local/lib ./configure --prefix=/usr/local --disable-dap --libdir=/usr/local/lib --includedir=/usr/local/include
make
make check
make install
make clean

