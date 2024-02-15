if(__CURRENT_FILE_VAR__)
  return()
endif()
set(__CURRENT_FILE_VAR__ TRUE)

if(NOT DEFINED FRAMEWORK_DIR)
    message( FATAL_ERROR "FRAMEWORK_DIR must be set" )
endif()

add_library(test_framework SHARED IMPORTED)
set_target_properties(test_framework PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "C"
    IMPORTED_LOCATION ${FRAMEWORK_DIR}/libtest_framework.a
)
