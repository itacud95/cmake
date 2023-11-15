#!/bin/bash

# add any argument to clean 
if [ $# -gt 0 ]; then 
    if [ -d build ]; then
        echo "delete build"    
        rm -r build
    fi
    if [ -d dist ]; then
        echo "delete dist"
        rm -r dist
    fi
fi

cmake -Bbuild && \
cmake --build build --target main && \
cmake --install build && \
./dist/main
