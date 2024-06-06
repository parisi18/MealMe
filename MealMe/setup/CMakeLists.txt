# Specify the minimum version for CMake
cmake_minimum_required(VERSION 3.16)

# Add include directories
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/include)

# Add source files
file(GLOB_RECURSE SETUP_SOURCES
    ${CMAKE_CURRENT_SOURCE_DIR}/src/*.cpp
)

# If there are header files, include them as well

file(GLOB_RECURSE SETUP_HEADERS
    ${CMAKE_CURRENT_SOURCE_DIR}/include/*.hpp
)

# Create a library from the sources
add_library(setup_library STATIC ${SETUP_SOURCES} ${SETUP_HEADERS}
    include/AppManager.h)

# Link libraries to the target if necessary
target_link_libraries(setup_library PUBLIC Qt6::Quick)

# Specify include directories for consumers of this library
target_include_directories(setup_library PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)
