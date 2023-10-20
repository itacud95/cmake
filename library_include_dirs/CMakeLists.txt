cmake_minimum_required(VERSION 3.12)
project( include_dir_test )

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

add_subdirectory(library)
add_subdirectory(application)