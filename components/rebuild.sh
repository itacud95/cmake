#!/bin/bash

dbg() {
    # ANSI escape codes for text formatting
    YELLOW='\033[1;33m'
    BOLD='\033[1m'
    RESET='\033[0m'

    # Print yellow bold text
    echo -e "${YELLOW}${BOLD}$1${RESET}"
}

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

dbg "configure"
cmake -Bbuild . || exit 1

dbg "list targets"
cmake --build build --target help || exit 1

dbg "build target main"
cmake --build build --target main || exit 1

dbg "build target bar"
cmake --build build --target bar || exit 1

dbg "install target component main"
cmake --install build --component main 

dbg "install component library"
cmake --install build --component library

