cmake_minimum_required(VERSION 3.27)

project(shared_lib_rpath)

set(CMAKE_EXPORT_COMPILE_COMMANDS on)

SET(CMAKE_INSTALL_PREFIX "dist")
set(CMAKE_INSTALL_RPATH "$ORIGIN/.;$ORIGIN/lib;$ORIGIN/../lib")

add_subdirectory(library)
add_subdirectory(foo)
