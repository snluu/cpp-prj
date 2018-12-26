# Find includes in corresponding build directories
set(CMAKE_INCLUDE_CURRENT_DIR ON)

add_executable(pocomd5 main.cpp)
target_link_libraries(pocomd5 ${CONAN_LIBS})