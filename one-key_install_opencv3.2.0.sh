#!/bin/bash

echo "Installing opencv3.2.0......"
sudo apt-get install build-essential
sudo apt-get install libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev
sudo add-apt-repository "deb http://security.ubuntu.com/ubuntu xenial-security main"
sudo apt update
sudo apt install libjasper1 libjasper-dev
sudo apt-get install python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libjasper-dev libdc1394-22-dev
wget -O opencv-3.2.0.zip https://codeload.github.com/opencv/opencv/zip/3.2.0
unar opencv-3.2.0.zip
mkdir build-opencv
cd build-opencv
cmake -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX=/usr/local -DENABLE_PRECOMPILED_HEADERS=OFF ../opencv-3.2.0
make -j8
sudo make install
cd ..
echo "opencv3.2.0 has been installed successfully"
