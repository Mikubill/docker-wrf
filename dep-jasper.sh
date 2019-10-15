#!/bin/sh

cd /jasper-2.0.14
mkdir BUILD
cd    BUILD
cmake -DCMAKE_INSTALL_PREFIX=/usr/local    \
      -DCMAKE_BUILD_TYPE=Release     \
      -DCMAKE_SKIP_INSTALL_RPATH=YES \
      -DJAS_ENABLE_DOC=NO            \
      -DCMAKE_INSTALL_DOCDIR=/usr/share/doc/jasper-2.0.14 \
      ..  
make
make install
make clean
