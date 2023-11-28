cmake_minimum_required(VERSION 3.12)
project( string_list_macro )

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

add_executable(${PROJECT_NAME} main.cpp)

set(TEST_MODULES
    testmodule_1
    testmodule_2
    testmodule_3
    )

message("TEST_MODULES: " ${TEST_MODULES})

function(import_library library)
    message("importing library: ${library}")
endfunction(import_library)

set(PREFIXED_LIBRARIES "")
foreach(MODULE IN LISTS TEST_MODULES)
    import_library(${MODULE})
    list(APPEND PREFIXED_LIBRARIES "lib${MODULE}_foo.so")
endforeach()

string(REPLACE ";" "," strings_libraries "${PREFIXED_LIBRARIES}")
message("final: ${PREFIXED_LIBRARIES}")

target_compile_definitions(${PROJECT_NAME} PRIVATE LIBRARIES="${strings_libraries}")
