#!/bin/bash

cmake -Bbuild && \
cmake --build build && \
./build/string_list_macro

