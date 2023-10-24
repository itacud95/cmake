cmake_minimum_required(VERSION 3.0)
project(MyProject)

# Set the name of the executable
set(EXECUTABLE_NAME my_executable)

# Add your source files and the executable
add_executable(${EXECUTABLE_NAME} your_source_files.cpp)

FILE(GENERATE OUTPUT ${CMAKE_BINARY_DIR}/wrapper
     CONTENT 
"#!/usr/bin/env bash
echo 'yubba dubba'
"
     FILE_PERMISSIONS OWNER_EXECUTE OWNER_WRITE OWNER_READ)



