FROM ubuntu:18.04
RUN apt-get -y update
RUN apt-get -y install sudo libc6 gcc g++ build-essential glibc-source subversion upx chrpath \
        diffstat cvs quilt cmake build-essential libssl-dev libpcsclite1 libpcsclite-dev dialog \
        libusb-1.0-0-dev mercurial libncurses-dev libcurl4-openssl-dev sshpass dos2unix libccid \
        lib32z1 python3 python3-pip python3-setuptools wget
RUN pip3 install -U pip \
    &&  pip3 install -U setuptools