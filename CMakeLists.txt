cmake_minimum_required (VERSION 3.17)

project (fortran)

enable_language (Fortran)

if (CMAKE_Fortran_COMPILER_ID MATCHES "gfortran")
  set (dialect "-ffree-form -std=f90 -fimplicit-none")
  set (bounds "-fbounds-check")
endif ()

set (CMAKE_Fortran_FLAGS_DEBUG "${CMAKE_Fortran_FLAGS_DEBUG} ${bounds}")
set (CMAKE_Fortran_FLAGS "${CMAKE_Fortran_FLAGS} ${dialect}")

add_subdirectory ("L1")
add_subdirectory ("L2")
add_subdirectory ("L6")