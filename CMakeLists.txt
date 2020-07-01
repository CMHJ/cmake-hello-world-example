cmake_minimum_required(VERSION 3.0.0)
project(cmake-example VERSION 0.1.0)

include_directories(include)
add_library(sqrt SHARED sqrt.cpp)

add_executable(clsqrt clsqrt.cpp)

target_link_libraries(clsqrt sqrt)

# Install Definitions
configure_file(sqrt-config.cmake.in "${PROJECT_BINARY_DIR}/sqrt-config.cmake")
# Run following command to uninstall project from system
# xargs rm < build/install_manifest.txt

install(TARGETS clsqrt DESTINATION bin/)
install(TARGETS sqrt DESTINATION lib/)
install(FILES include/sqrt.h DESTINATION include/)
install(FILES "${PROJECT_BINARY_DIR}/sqrt-config.cmake" DESTINATION lib/cmake/sqrt)