#! /bin/sh
#
# compile.sh
# Copyright (C) 2017 dutoeserver <dutoeserver@A0835-Server-2>
#
# Distributed under terms of the MIT license.
#


cd build
cmake -D CUDA_USE_STATIC_CUDA_RUNTIME=OFF ..
make
