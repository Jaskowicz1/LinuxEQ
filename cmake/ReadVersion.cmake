# ===================================
# Read version - Credit from DPP
# ===================================

file(READ "${PROJECT_PATH}/include/utilities/version.h" version_h)

if(NOT version_h MATCHES "PROJECT_VERSION_SHORT ([0-9][0-9])([0-9][0-9])([0-9][0-9])")
    message(FATAL_ERROR "Cannot get PROJECT_VERSION_SHORT from version.h")
endif()

math(EXPR PROJECT_VERSION_MAJOR "${CMAKE_MATCH_1}")
math(EXPR PROJECT_VERSION_MINOR "${CMAKE_MATCH_2}")
math(EXPR PROJECT_VERSION_PATCH "${CMAKE_MATCH_3}")

string(CONCAT PROJECT_VERSION "${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}.${PROJECT_VERSION_PATCH}")

message("${PROJECT_NAME} version is: ${PROJECT_VERSION}")

# ===================================
# End of Read version
# ===================================