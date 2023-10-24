#!/bin/bash

if [ ! -d build ]; then 
    rm -r build 
fi

cmake -Bbuild && \
cmake --build build
