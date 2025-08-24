cmake_minimum_required(VERSION 3.25)

# Simplify project path var
set(PROJECT_NAME "LinuxEQ")
set(PROJECT_PATH ${CMAKE_CURRENT_SOURCE_DIR})

set(CMAKE_CXX_STANDARD 20)

# Sets "PROJECT_VERSION"
include("${PROJECT_PATH}/cmake/ReadVersion.cmake")

project("${PROJECT_NAME}"
        VERSION "${PROJECT_VERSION}"
        LANGUAGES CXX
        HOMEPAGE_URL "https://jaskowicz.xyz"
        DESCRIPTION "An EQ for Linux")

file(GLOB SRC_CODE CONFIGURE_DEPENDS "src/*.cpp" "include/*.h" "src/*/*.cpp" "include/*/*.h")

include_directories(
        include/
)

add_executable(${PROJECT_NAME} ${SRC_CODE})
