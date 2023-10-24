cmake_minimum_required(VERSION 3.12)
project( library )

add_library(${PROJECT_NAME} STATIC src/library.cpp)
target_include_directories(${PROJECT_NAME} PUBLIC include)
