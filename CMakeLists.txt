cmake_minimum_required (VERSION 3.0)

# set C and CPP compilers
set(CMAKE_C_COMPILER "gcc-7")
set(CMAKE_CXX_COMPILER "g++-7")

# set Fortran compiler
set(CMAKE_Fortran_COMPILER "gfortran-7")
enable_language(Fortran)

# set the project, and the output directory
project(mycpp)
set (CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/bin)

# the CPP compiler and linker flags
#set (MYCFLAGS "-fopenmp -Wall -std=c++17 -llapack -lblas -O3 -ffast-math")
set (MYCFLAGS "-Wall -O3 -ffast-math")
set (CMAKE_CXX_FLAGS ${MYCFLAGS})
set (CMAKE_EXE_LINKER_FLAGS ${MYCFLAGS})

# the Fortran compiler flags
#set (MYFFLAGS "-fopenmp -Wall -llapack -lblas -O3 -ffast-math")
set (MYFFLAGS "-Wall -O3 -ffast-math")
set (CMAKE_Fortran_FLAGS ${MYFFLAGS})

# my sources and headers
file(GLOB SOURCES 
    ${CMAKE_SOURCE_DIR}/sources/*.cpp
    ${CMAKE_SOURCE_DIR}/sources/*.h
    ${CMAKE_SOURCE_DIR}/sources/*.f
    )
add_executable(a.out ${SOURCES})

# some useful libraries, in case needed
#find_package(LAPACK REQUIRED)
#find_package(OpenMP REQUIRED)

#include_directories(${LAPACK_INCLUDE_DIR} ${OpenMP_INCLUDE_DIR})
#target_link_libraries(a.out ${LAPACK_LIBRARY} ${OpenMP_LIBRARY})
