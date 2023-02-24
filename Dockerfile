FROM ubuntu:18.04
RUN apt-get -y update
RUN apt-get -y install sudo libc6 gcc g++ build-essential glibc-source subversion upx chrpath \
        diffstat cvs quilt cmake build-essential libssl-dev libpcsclite1 libpcsclite-dev dialog \
        libusb-1.0-0-dev mercurial libncurses-dev libcurl4-openssl-dev sshpass dos2unix libccid \
        lib32z1 python3 python3-pip python3-setuptools wget libfontconfig1 fontconfig \
        libfontconfig1-dev libx11-xcb1 libasound2 x11-apps libice6 libsm6 libxaw7 \
        libxft2 libxmu6 libxpm4 libxt6 x11-apps xbitmaps libxkbcommon-x11-dev libxcb-xinerama0 \
        libgl1-mesa-glx libxcb*
RUN pip3 install -U pip \
    &&  pip3 install -U setuptools
COPY ./CQtDeployer.tar.gz /