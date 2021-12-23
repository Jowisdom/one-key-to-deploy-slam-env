#!/bin/bash

set -x # echo on
set -e # exit on error

echo "Installing opencv3.4.16......"
sudo apt install unar
sudo apt-get install build-essential
sudo apt-get install libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev
sudo add-apt-repository "deb http://security.ubuntu.com/ubuntu xenial-security main"
sudo apt update
sudo apt install libjasper1 libjasper-dev
sudo apt-get install python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libjasper-dev libdc1394-22-dev
wget -O opencv-3.4.16.zip https://codeload.github.com/opencv/opencv/zip/3.4.16
unar opencv-3.4.16.zip
cd opencv-3.4.16
if [ -d build ]
then 
    rm -rf build
    mkdir build
else
    mkdir build
fi
cd build
cmake -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX=/usr/local ..
make
sudo make install
cd

