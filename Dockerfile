FROM ubuntu:18.04
RUN apt-get -y update
RUN apt-get -y install sudo libc6 gcc g++ build-essential glibc-source subversion upx chrpath \
        diffstat cvs quilt cmake build-essential libssl-dev libpcsclite1 libpcsclite-dev dialog \
        libusb-1.0-0-dev mercurial libncurses-dev libcurl4-openssl-dev sshpass dos2unix libccid \
        lib32z1 python3 python3-pip python3-setuptools wget libfontconfig1 fontconfig \
        libfontconfig1-dev libx11-xcb1 libasound2 x11-apps libice6 libsm6 libxaw7 \
        libxft2 libxmu6 libxpm4 libxt6 x11-apps xbitmaps libxkbcommon-x11-dev libxcb-xinerama0 \
        libgl1-mesa-glx tree curl zip libxcb*
RUN pip3 install -U pip \
    &&  pip3 install -U setuptools
COPY ./CQtDeployer.tar.gz /
RUN apt-get update -y && \
        apt-get upgrade -y && \
        apt-get dist-upgrade -y && \
        apt-get install build-essential software-properties-common -y && \
        add-apt-repository ppa:ubuntu-toolchain-r/test -y && \
        apt-get update -y && \
        apt-get install gcc-9 g++-9 -y && \
        update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-9 60 --slave /usr/bin/g++ g++ /usr/bin/g++-9