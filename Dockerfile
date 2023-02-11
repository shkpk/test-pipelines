FROM ubuntu:18.04
RUN apt-get -y update \
    && apt-get -y install sudo libc6 gcc g++ build-essential glibc-source subversion upx chrpath \
    diffstat cvs quilt cmake build-essential libssl-dev libpcsclite1 libpcsclite-dev dialog \
    libusb-1.0-0-dev mercurial libncurses-dev libcurl4-openssl-dev sshpass dos2unix libccid \
    lib32z1 python3 python3-pip python3-setuptools wget
RUN apt-get -y upgrade gawk bison
RUN wget https://ftp.gnu.org/gnu/glibc/glibc-2.34.tar.gz \
    && tar xzvf glibc-2.34.tar.gz \
    && cd glibc-2.34 \
    && GLIBC_DIR=$(pwd) \
    && mkdir -p /opt/glibc \
    && cd /opt/glibc \
    && $GLIBC_DIR/configure --prefix=/opt/glibc \
    && make \
    && make install