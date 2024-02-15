cmake_minimum_required(VERSION 3.27)

project(test_framework)

add_library(${PROJECT_NAME} test_framework.cpp)

install(TARGETS ${PROJECT_NAME} DESTINATION ${PROJECT_NAME})
# install(FILES test_framework.cmake DESTINATION ${PROJECT_NAME})