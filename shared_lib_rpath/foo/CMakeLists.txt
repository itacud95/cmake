cmake_minimum_required(VERSION 3.27)

project(foo)

add_executable(foo foo.cpp)
target_link_libraries(foo library)

install(TARGETS foo DESTINATION)
