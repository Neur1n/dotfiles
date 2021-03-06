CMAKE_MINIMUM_REQUIRED(VERSION 2.8 FATAL_ERROR)
PROJECT(xxx)

FILE(GLOB_RECURSE HEADERS "include/*.h")
FILE(GLOB_RECURSE SOURCES "src/*.cc")

FIND_PACKAGE(xxx REQUIRED)

INCLUDE_DIRECTORIES(
    include
    ${xxx_INCLUDE_DIRS}
)

LINK_DIRECTORIES(${GAZEBO_LIBRARY_DIRS})

LIST(APPEND CMAKE_CXX_FLAGS "xxx")

ADD_LIBRARY(xxx SHARED src/xxx.cc)

TARGET_LINK_LIBRARIES(xxx ${xxx_LIBRARIES})
