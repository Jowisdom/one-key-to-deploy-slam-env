#!/bin/bash

echo "Installing eigen3.3.4......."
wget https://gitlab.com/libeigen/eigen/-/archive/3.3.4/eigen-3.3.4.tar.bz2
tar xvf eigen-3.3.4.tar.bz2
mkdir build-eigen
cd build-eigen
cmake ../eigen-3.3.4 -DEIGEN_DEFAULT_TO_ROW_MAJOR=$ROW_MAJOR_DEFAULT
sudo make install
cd ..
sudo cp -r /usr/local/include/eigen3/ /usr/include/
echo "Eigen3.3.4 has been installed successfully"
