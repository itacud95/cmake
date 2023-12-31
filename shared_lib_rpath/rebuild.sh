#!/bin/bash

# add any argument to clean builddir
if [ $# -gt 0 ]; then 
    if [ -d build ]; then
        rm -r build
    fi
    if [ -d dist ]; then
        rm -r dist
    fi
fi

cmake -Bbuild && \
cmake --build build -j8 && \
cmake --install build && \
./dist/bin/foo
