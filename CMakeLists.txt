cmake_minimum_required(VERSION 3.10)
project(knn)

set(CMAKE_CXX_STANDARD 14)


# glog
find_package(glog 0.4.0 REQUIRED)

include_directories(BEFORE ${GLOG_INCLUDE_DIRS})

#boost
find_package(Boost  COMPONENTS  REQUIRED)

add_executable(knn main.cpp knn.cpp knn.h)
target_link_libraries(knn  ${Boost_LIBRARIES}　glog )