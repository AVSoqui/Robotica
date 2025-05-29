cmake_minimum_required(VERSION 3.0.2)
project(robot_arm_urdf)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
  geometry_msgs
  urdf
  xacro
)

catkin_package()

include_directories(
  ${catkin_INCLUDE_DIRS}
)

install(DIRECTORY launch meshes urdf config
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)
