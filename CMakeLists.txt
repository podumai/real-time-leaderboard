cmake_minimum_required(VERSION 3.30)

find_package(Git QUIET)
if(Git_FOUND)
  execute_process(
    COMMAND ${GIT_EXECUTABLE} describe --tags --abbrev=0
    WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
    OUTPUT_VARIABLE GIT_TAG
    OUTPUT_STRIP_TRAILING_WHITESPACE ERROR_QUIET
  )

  if(GIT_TAG)
    string(SUBSTRING ${GIT_TAG} 1 -1 PROJECT_VERSION)
  endif()
endif()

if(NOT PROJECT_VERSION)
  set(PROJECT_VERSION "1.0.0")
endif()

project(
  RealTimeLeaderBoard
  VERSION ${PROJECT_VERSION}
  LANGUAGES CXX
)

set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)
set(CMAKE_CXX_SCAN_FOR_MODULES OFF)

find_package(yaml-cpp REQUIRED)
find_package(RapidJSON REQUIRED)
find_package(tomlplusplus REQUIRED)

if(BUILD_TESTING)
  find_package(Catch2 3 REQUIRED)
  include(CTest)
  include(Catch)
  enable_testing()
  add_subdirectory(tests)
endif()

add_subdirectory(cmd)
add_subdirectory(src)
