cmake_minimum_required(VERSION 3.0.0)
project(cmake-example VERSION 1.0.0)
set(CMAKE_CXX_STANDARD 11) # Set the standard

include_directories(include)
add_library(sqrt SHARED sqrt.cpp)

add_executable(clsqrt clsqrt.cpp)

target_link_libraries(clsqrt sqrt)

# Allows other projects to use include dir variables specified in sqrt-config.cmake.in
# This allows find_package(sqrt) to be used in other CMake projects
configure_file(sqrt-config.cmake.in "${PROJECT_BINARY_DIR}/sqrt-config.cmake")

# Install Definitions
# By default on Linux is installed to /usr/local/ and needs to be configured on Windows (easiest in CMake GUI)
install(TARGETS clsqrt DESTINATION bin/)
install(TARGETS sqrt DESTINATION lib/)
install(FILES include/sqrt.h DESTINATION include/)
install(FILES "${PROJECT_BINARY_DIR}/sqrt-config.cmake" DESTINATION lib/cmake/sqrt) # This allows find_package(sqrt) to be used in other projects
