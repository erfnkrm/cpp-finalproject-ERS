cmake_minimum_required(VERSION 3.10)
project(StudentInfoSystem)

set(CMAKE_CXX_STANDARD 11) 
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(PkgConfig REQUIRED)
pkg_check_modules(PQXX REQUIRED libpqxx)

include_directories(include ${PQXX_INCLUDE_DIRS})

set(SOURCES src/main.cpp)

add_executable(sis_app ${SOURCES})
 
target_link_libraries(sis_app ${PQXX_LIBRARIES})
