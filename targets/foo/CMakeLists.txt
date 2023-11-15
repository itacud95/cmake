cmake_minimum_required(VERSION 3.27)

project(foo)

add_library(foo SHARED foo.cpp)
install(TARGETS foo DESTINATION . OPTIONAL)
