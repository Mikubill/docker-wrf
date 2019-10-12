
cd /hdf5-1.10.5
CPP=cpp CFLAGS="-fPIC -m64 -tp=px" CXXFLAGS="-fPIC -m64 -tp=px" FCFLAGS="-fPIC -m64 -tp=px" CC=pgcc CXX=pgc++ FC=pgfortran ./configure --enable-fortran --prefix=/usr
make -j4 
make install 
cd ..
