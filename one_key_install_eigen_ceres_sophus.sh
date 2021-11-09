#!/bin/bash

set -x # echo on
set -e # exit on error

cmake --version

sudo apt install gfortran
sudo apt-get -qq update
sudo apt install ccache
sudo apt-get install libc++-dev libgoogle-glog-dev libatlas-base-dev libsuitesparse-dev 

# install eigen
if [ -f eigen-3.3.4.tar.bz2 ] 
then
    echo "The file has been downloaded"
else
    wget https://gitlab.com/libeigen/eigen/-/archive/3.3.4/eigen-3.3.4.tar.bz2
fi
tar xvf eigen-3.3.4.tar.bz2
cd eigen-3.3.4
if [ -d build-eigen ]
then 
    rm -rf build-eigen
    mkdir build-eigen
else
    mkdir build-eigen
fi
cd build-eigen
cmake .. 
make -j8
sudo make install
cd ../..


# install ceres
if [ ! -f ceres-solver ]
then
    git clone https://ceres-solver.googlesource.com/ceres-solver ceres-solver
else
    echo "the file exist"
fi
cd ceres-solver
git reset --hard 399cda773035d99eaf1f4a129a666b3c4df9d1b1
if [ -d build ]
then 
    rm -rf build
    mkdir build
else
    mkdir build
fi

cd build
ccache -s
cmake -DCMAKE_CXX_COMPILER_LAUNCHER=ccache ..
make -j8
sudo make install
cd ../..

# install fmt
if [ ! -f fmt ]
then
    git clone https://github.com/fmtlib/fmt.git fmt
else
    echo "the file exist"
fi
cd fmt
git checkout 5.3.0
if [ -d build ]
then 
    rm -rf build
    mkdir build
else
    mkdir build
fi
cd build
cmake -DCMAKE_CXX_COMPILER_LAUNCHER=ccache ..
make -j8
sudo make install
cd ../..

# install sophus
if [ ! -f sophus ]
then
    git clone https://github.com/strasdat/Sophus.git sophus
else
    echo "the file exist"
fi
cd sophus
if [ -d build ]
then 
    rm -rf build
    mkdir build
else
    mkdir build
fi
cd build
cmake ..
make -j8
sudo make install
cd ../..

