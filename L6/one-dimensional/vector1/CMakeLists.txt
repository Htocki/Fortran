cmake_minimum_required (VERSION 3.17)

project ("vector1")

add_executable (${PROJECT_NAME} "src/Main.f90")

file (COPY 
    "${PROJECT_SOURCE_DIR}/files" 
  DESTINATION
    "${PROJECT_BINARY_DIR}"
)