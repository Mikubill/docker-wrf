
FROM debian:stable-slim
COPY . /root/
ENV DEBIAN_FRONTEND noninteractive
ENV PATH /opt/pgi/linux86-64/19.4/bin:/opt/pgi/linux86-64/19.4/mpi/openmpi-3.1.3/bin:$PATH
ENV CC pgcc
ENV CXX pgc++
ENV FC pgfortran
ENV F77 pgfortran
ENV JASPERLIB /usr/lib
ENV JASPERINC /usr/include
ENV NETCDF /usr
ENV HDF5 /usr
RUN sh /root/update.sh &&\
    sh /root/pgi.sh  &&\
    sh /root/dep-prep.sh &&\
#     sh /root/dep-zlib.sh &&\
#     sh /root/dep-libpng.sh &&\
    sh /root/dep-jasper.sh &&\
    sh /root/dep-hdf5.sh  &&\
#     sh /root/dep-netcdf.sh &&\
    sh /root/wrf-prep.sh &&\
    sh /root/wrf-build-1.sh &&\ 
    sh /root/wrf-build-2.sh &&\
    sh /root/clean.sh
WORKDIR /root/

