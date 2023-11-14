cmake_minimum_required(VERSION 3.27)

project(template)

set(CMAKE_EXPORT_COMPILE_COMMANDS on)

add_subdirectory(bar)
add_subdirectory(foo)

add_executable(main main.cpp)
install(TARGETS main DESTINATION .)
