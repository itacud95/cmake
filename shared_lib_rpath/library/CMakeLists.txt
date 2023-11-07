cmake_minimum_required(VERSION 3.27)

project(library)

add_library(library SHARED library.cpp)
target_include_directories(library PUBLIC ${CMAKE_CURRENT_LIST_DIR})

install(TARGETS library DESTINATION)
