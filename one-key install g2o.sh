#!/bin/bash

echo "Installing ceres-solver-2.0.0......"
# CMake
sudo apt-get install cmake
# google-glog + gflags
sudo apt-get install libgoogle-glog-dev libgflags-dev
# BLAS & LAPACK
sudo apt-get install libatlas-base-dev
# SuiteSparse and CXSparse (optional)
sudo apt-get install libsuitesparse-dev

git clone https://ceres-solver.googlesource.com/ceres-solver
mkdir build-ceres
cd build-ceres
cmake ../ceres-solver
make -j7
# Optionally install Ceres, it can also be exported using CMake which
# allows Ceres to be used without requiring installation, see the documentation
# for the EXPORT_BUILD_DIR option for more information.
sudo make install
cd ..
echo "Ceres has been installed successfully"
