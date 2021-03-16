#!/bin/bash

echo "Installing Sophus......"
git clone https://github.com/strasdat/Sophus.git
mkdir build-sophus
cd build-sophus
cmake ../Sophus
make
sudo make install
cd ..
echo "Sophus has been installed successfully"
