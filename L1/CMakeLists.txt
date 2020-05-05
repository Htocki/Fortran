cmake_minimum_required (VERSION 3.17)

project ("L1")

add_executable (${PROJECT_NAME} "src/Main.f90")

file (MAKE_DIRECTORY "${PROJECT_BINARY_DIR}/files")