cmake_minimum_required (VERSION 2.8)

# projectname is the same as the main-executable
project(libVideoDeCoGPU)

# add_definitions('-g')
# add_definitions('-Wall')
# add_definitions('-std=c++11')

find_package(OpenCV REQUIRED)
find_package(CUDA REQUIRED)
include_directories("${CUDA_INCLUDE_DIRS}")

# add_executable(${PROJECT_NAME} ${PROJECT_NAME}.cpp)
# target_link_libraries(${PROJECT_NAME} ${OpenCV_LIBS})

# CPU
add_executable(bgfg_segm_cpu bgfg_segm_cpu.cpp)
target_link_libraries(bgfg_segm_cpu ${OpenCV_LIBS})

# GPU
add_executable(bgfg_segm_gpu bgfg_segm_gpu.cpp)
target_link_libraries(bgfg_segm_gpu ${OpenCV_LIBS})

# add_custom_target(${PROJECT_NAME}-symlink ALL ln --force -s ${CMAKE_CURRENT_BINARY_DIR}/${PROJECT_NAME} ${CMAKE_SOURCE_DIR}/${PROJECT_NAME} DEPENDS ${PROJECT_NAME})
# set_directory_properties(PROPERTIES ADDITIONAL_MAKE_CLEAN_FILES ${CMAKE_SOURCE_DIR}/${PROJECT_NAME})


