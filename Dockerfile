
FROM debian:stable-slim
COPY . /root/
ENV DEBIAN_FRONTEND noninteractive
ENV PATH /opt/pgi/linux86-64/19.4/bin:/opt/pgi/linux86-64/19.4/mpi/openmpi-3.1.3/bin:$PATH
ENV CC pgcc
ENV CXX pgc++
ENV FC pgf90
ENV F77 pgfortran
ENV JASPERLIB /usr/local/lib
ENV JASPERINC /usr/local/include
ENV NETCDF /usr/local
ENV HDF5 /usr/local
RUN sh /root/update.sh 
RUN sh /root/pgi.sh  
RUN sh /root/dep-prep.sh 
RUN sh /root/dep-iconv.sh
RUN sh /root/dep-zlib.sh 
RUN sh /root/dep-libpng.sh 
RUN sh /root/dep-jasper.sh 
RUN sh /root/dep-hdf5.sh 
RUN sh /root/dep-netcdf.sh
RUN sh /root/wrf-prep.sh 
RUN sh /root/wrf-build-1.sh 
RUN sh /root/wrf-build-2.sh 
RUN sh /root/clean.sh
WORKDIR /root/

