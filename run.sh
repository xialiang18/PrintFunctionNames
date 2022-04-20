#!/usr/bin/env bash

mkdir build
cd build
cmake -DCMAKE_BUILD_TYPE=Debug ..
make

clang -cc1 -load ./PrintFunctionNames.so -plugin print-fns ../func.cc 
