cmake_minimum_required(VERSION 3.27)

project(components)

set(CMAKE_EXPORT_COMPILE_COMMANDS on)
set(CMAKE_INSTALL_PREFIX ${CMAKE_CURRENT_LIST_DIR}/dist)

# dependency object lib
add_library(dependency OBJECT src/dependency.cpp)

# bar lib
add_library(bar EXCLUDE_FROM_ALL src/bar.cpp)
install(TARGETS bar COMPONENT library DESTINATION .)

# main executable
add_executable(main EXCLUDE_FROM_ALL src/main.cpp)
install(TARGETS main COMPONENT main DESTINATION .)
