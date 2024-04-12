cmake_minimum_required(VERSION 3.0.2)
project(exam)
find_package(catkin REQUIRED COMPONENTS roscpp)


catkin_package(

)

include_directories(
# include
${catkin_INCLUDE_DIRS}
)

add_executable(detec_obstacles detection_obstacles.cpp)
target_link_libraries(detec_obstacles ${catkin_LIBRARIES})
add_executable(tourner tourner.cpp)
target_link_libraries(tourner ${catkin_LIBRARIES})
add_executable(gestion_rotation gestion_rotation.cpp)
target_link_libraries(gestion_rotation ${catkin_LIBRARIES})