cmake_minimum_required(VERSION 3.27)

project(template)

set(CMAKE_EXPORT_COMPILE_COMMANDS on)
set(CMAKE_INSTALL_PREFIX ${CMAKE_CURRENT_LIST_DIR}/dist)
set(CMAKE_BUILD_WITH_INSTALL_RPATH on)
set(CMAKE_INSTALL_RPATH "$ORIGIN")

add_subdirectory(bar)
add_subdirectory(foo)

add_executable(main main.cpp)
target_link_libraries(main foo)
install(TARGETS main DESTINATION . OPTIONAL)
