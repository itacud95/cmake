#!/bin/bash

check_failure() {
  if [ $? -ne 0 ]; then
    echo "The last command failed. Exiting the script."
    exit 1
  fi
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

build_target() {
    target=$1
    options=$2
    builddir=build/${target}

    cmake -B ${builddir} -DCMAKE_INSTALL_PREFIX=dist ${options} ${target} 
    check_failure

    cmake --build ${builddir} ; check_failure
    cmake --install ${builddir} ; check_failure
}

build_target modules/test_framework
build_target foo -DFRAMEWORK_DIR=$(pwd)/dist/test_framework


# build another
# target=foo
# builddir=build/${target}
# cmake -B ${builddir} -DCMAKE_INSTALL_PREFIX=${installdir} modules ; check_failure

# build foo 
# cmake -Bbuild/foo -DCMAKE_INSTALL_PREFIX=dist foo
# cmake --build build/foo -j8
# cmake --install build/foo

# build all
# cmake -Bbuild . && \
# cmake --build build -j8 --target foo
