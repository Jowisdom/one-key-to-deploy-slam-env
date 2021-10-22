#!/bin/bash


sudo apt install libgl1-mesa-dev

sudo apt install libglew-dev

sudo apt install cmake

sudo apt install libpython2.7-dev

sudo apt install pkg-config

sudo apt install libegl1-mesa-dev libwayland-dev libxkbcommon-dev wayland-protocols

sudo apt install ffmpeg libavcodec-dev libavutil-dev libavformat-dev libswscale-dev libavdevice-dev

sudo apt install libdc1394-22-dev libraw1394-dev

sudo apt install libjpeg-dev libpng12-dev libtiff5-dev libopenexr-dev


git clone https://github.com/stevenlovegrove/Pangolin.git
cd Pangolin
mkdir build
cd build
cmake ..
cmake --build .

echo"The Pangolin has been installed"
