#!bin/bash

if [ -f cmake-3.20.6.tar.gz ] 
then
    echo "The file has been downloaded"
else
    wget https://github.com/Kitware/CMake/releases/download/v3.20.6/cmake-3.20.6.tar.gz 
fi

tar xvf cmake-3.20.6.tar.gz
cd cmake-3.20.6
sudo apt install make
./configure
make -j8
sudo make install
cd ../..