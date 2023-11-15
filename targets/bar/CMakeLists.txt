cmake_minimum_required(VERSION 3.27)

project(bar)

add_library(bar SHARED bar.cpp)
install(TARGETS bar DESTINATION . OPTIONAL)

