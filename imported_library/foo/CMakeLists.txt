cmake_minimum_required(VERSION 3.27)

set(CMAKE_EXPORT_COMPILE_COMMANDS on)

project(foo)

list(APPEND CMAKE_MODULE_PATH ${CMAKE_CURRENT_SOURCE_DIR}/../cmake_modules)
include(test_framework)

# add_subdirectory(../modules modules)

add_executable(foo foo.cpp)
target_link_libraries(foo PUBLIC test_framework)
install(TARGETS foo DESTINATION ${PROJECT_NAME})
