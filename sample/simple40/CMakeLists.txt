cmake_minimum_required(VERSION 2.8.3)

set (CMAKE_CXX_STANDARD 11)

find_package( Boost REQUIRED )
find_package( PCL REQUIRED )

include_directories(
    ${PCL_INCLUDE_DIRS}
    ${Boost_INCLUDE_DIRS}
)

add_executable(simple40
    simple40.cc
)

find_library(HesaiLidarSDK_LIBS hesaiLidarSDK)

target_link_libraries(simple40
    hesaiLidarSDK
    ${Boost_LIBRARIES}
    ${PCL_LIBRARIES}
)
