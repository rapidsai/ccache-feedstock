#!/bin/bash

mkdir build
cd build
cmake \
   -DENABLE_TESTING=OFF \
   -DCMAKE_INSTALL_PREFIX:PATH=$PREFIX \
   -DUSE_LIBB2_FROM_INTERNET=ON \
   -DUSE_LIBZSTD_FROM_INTERNET=ON ..
make -j${CPU_COUNT}
make install