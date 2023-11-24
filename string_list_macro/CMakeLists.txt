cmake_minimum_required(VERSION 3.12)
project( string_list_macro )

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

add_executable(${PROJECT_NAME} main.cpp)

set(libraries 
    "String1"
    "String2"
    "String3"
    )

string(REPLACE ";" "," strings_libraries "${libraries}")

message(STATUS "strings_libraries='${strings_libraries}'")
message("libraries: " ${libraries})

foreach(name IN LISTS libraries)
    message("adding library: ${name}")
endforeach()

target_compile_definitions(${PROJECT_NAME} PRIVATE LIBRARIES="${strings_libraries}")

