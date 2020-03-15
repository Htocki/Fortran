cmake_minimum_required (VERSION 3.15)

project ("Check")

add_executable (${PROJECT_NAME} "Check.cpp")

set_target_properties (${PROJECT_NAME}
	PROPERTIES
		set (CMAKE_CXX_STANDARD 17)
		set (CMAKE_CXX_STANDARD_REQUIRED ON)
	)

file (COPY 
		"${PROJECT_BINARY_DIR}/${PROJECT_NAME}.exe" 
	DESTINATION
		"${PROJECT_SOURCE_DIR}/.."
	)
