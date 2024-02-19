cmake_minimum_required(VERSION 3.27)

project(test_framework)

add_library(${PROJECT_NAME} src/test_framework.cpp)

# message(FATAL_ERROR ${CMAKE_CURRENT_SOURCE_DIR})
target_include_directories(${PROJECT_NAME} PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)

# target_include_directories(${PROJECT_NAME} INTERFACE
#     $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
#     $<INSTALL_INTERFACE:include>  # <prefix>/include/mylib
# )


install(TARGETS ${PROJECT_NAME} DESTINATION ${PROJECT_NAME})