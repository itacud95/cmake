#!/bin/bash

if [ ! -d build ]; then 
    rm -r build 
fi

cmake -Bbuild && \
cmake --build build && \
if [ ! -f compile_commands.json ]; then
    ln -s build/compile_commands.json . 
fi
