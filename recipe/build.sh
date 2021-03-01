#!/bin/bash

mkdir build
cd build
cmake \
   -DENABLE_TESTING=OFF \
   -DCMAKE_INSTALL_PREFIX:PATH=$PREFIX \
   -DZSTD_FROM_INTERNET=ON ..
make -j${CPU_COUNT}
make install
