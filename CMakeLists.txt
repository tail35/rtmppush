cmake_minimum_required (VERSION 3.5 FATAL_ERROR)
project(drawyuv)

add_compile_options(-x objective-c++)

set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_BUILD_TYPE Debug)



find_package(Qt5Widgets)
find_package(Qt5Core)
find_package(Qt5Gui)


#include_directories (${PCL_INCLUDE_DIRS})
#link_directories    (${PCL_LIBRARY_DIRS})
#add_definitions     (${PCL_DEFINITIONS})


include_directories(${PROJECT_SOURCE_DIR}/)
link_directories(${PROJECT_BINARY_DIR}/libs)


set(LIBRARY_OUTPUT_PATH ${PROJECT_BINARY_DIR}/libs)
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_BINARY_DIR}/bin)

#add_subdirectory(IO)
add_subdirectory(main)