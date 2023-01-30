cmake_minimum_required(VERSION 3.11)
project(mlir-toy)

find_package(LLVM REQUIRED)
find_package(MLIR REQUIRED)
list(APPEND CMAKE_MODULE_PATH ${MLIR_CMAKE_DIR})

include(AddLLVM)
include(TableGen)
include(AddMLIR)

include_directories(${LLVM_INCLUDE_DIRS})
include_directories(${MLIR_INCLUDE_DIRS})

include_directories(${CMAKE_CURRENT_SOURCE_DIR})
include_directories(${CMAKE_CURRENT_BINARY_DIR})

add_subdirectory(src)

