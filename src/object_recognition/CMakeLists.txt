cmake_minimum_required(VERSION 2.8.3)
project(object_recognition)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS roscpp 
										sensor_msgs 
										std_msgs 
										cv_bridge 
										rec_msg_and_serv
										tf )

## System dependencies are found with CMake's conventions
# find_package(Boost REQUIRED COMPONENTS system)
find_package(Qt4 REQUIRED)
find_package(OpenCV REQUIRED)

catkin_package(
    DEPENDS 
    CATKIN-DEPENDS 
    INCLUDE_DIRS 
    LIBRARIES 
)

include_directories(${OPENCV_INCLUDE_DIRS})
link_directories(${OPENCV_LIBRARY_DIRS})


set(QT_USE_QTOPENGL TRUE)
include(${QT_USE_FILE})

add_definitions(${QT_DEFINITIONS})
add_definitions(-Dlinux -D__x86_64__)

include_directories(${QT_INCLUDE_DIR})
include_directories(${QT_INCLUDE_DIR}/QtOpenGL)

message(STATUS "QT_INCLUDE_DIR: ${QT_INCLUDE_DIR}")
message(STATUS "QT_USE_FILE: ${QT_USE_FILE}")
message(STATUS "QT_DEFINITIONS: ${QT_DEFINITIONS}")
message(STATUS "QT_LIBRARIES: ${QT_LIBRARIES}")

message(STATUS "OPENCV_LIBRARIES: ${OPENCV_LIBRARIES}")


## Uncomment this if the package has a setup.py. This macro ensures
## modules and global scripts declared therein get installed
## See http://ros.org/doc/groovy/api/catkin/html/user_guide/setup_dot_py.html
# catkin_python_setup()

#######################################
## Declare ROS messages and services ##
#######################################

## Generate messages in the 'msg' folder
# add_message_files(
#   FILES
#   Message1.msg
#   Message2.msg
# )

###################################
## catkin specific configuration ##
###################################
## The catkin_package macro generates cmake config files for your package
## Declare things to be passed to dependent projects
## LIBRARIES: libraries you create in this project that dependent projects also need
## CATKIN_DEPENDS: catkin_packages dependent projects also need
## DEPENDS: system dependencies of this project that dependent projects also need
catkin_package(
   INCLUDE_DIRS include
#  LIBRARIES shape_simple_classifier
#  CATKIN_DEPENDS roscpp sensor_msgs std_msgs
#  DEPENDS system_lib
)

###########
## Build ##
###########

## Specify additional locations of header files
## Your package locations should be listed before other locations
include_directories(include
  ${catkin_INCLUDE_DIRS}
)

## Declare a cpp library
# add_library(shape_simple_classifier
#   src/${PROJECT_NAME}/shape_simple_classifier.cpp
# )

################################rec_node########################
			## Declare a cpp executable
			add_executable(rec_node src/rec/rec_node.cpp 
									src/rec/recognizer.cpp)

			## Add cmake target dependencies of the executable/library
			## as an example, message headers may need to be generated before nodes
			# add_dependencies(shape_simple_classifier_node shape_simple_classifier_generate_messages_cpp)

			set(TRACKER_QT_LIBRARIES v4rTracker v4rTomGine v4rTomGineIP v4rRecognizer3D)

			## Specify libraries to link a library or executable target against
			target_link_libraries(rec_node
			  ${catkin_LIBRARIES}
			  ${OPENCV_LIBRARIES} opencv_core opencv_highgui
			  ${QT_LIBRARIES}
			  ${TRACKER_QT_LIBRARIES}
			)
			
#####################rec_test_node##############################		
			## Declare a cpp executable
			add_executable(rec_test_node src/rec_test/main.cpp)

			## Add cmake target dependencies of the executable/library
			## as an example, message headers may need to be generated before nodes
			# add_dependencies(soc_test_node soc_test_generate_messages_cpp)

			## Specify libraries to link a library or executable target against
			target_link_libraries(rec_test_node
			  ${catkin_LIBRARIES}
			)			
			
			
#############
## Install ##
#############

# all install targets should use catkin DESTINATION variables
# See http://ros.org/doc/groovy/api/catkin/html/adv_user_guide/variables.html

## Mark executable scripts (Python etc.) for installation
## in contrast to setup.py, you can choose the destination
# install(PROGRAMS
#   scripts/my_python_script
#   DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
# )

## Mark executables and/or libraries for installation
# install(TARGETS shape_simple_classifier shape_simple_classifier_node
#   ARCHIVE DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
#   LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
#   RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
# )

## Mark cpp header files for installation
# install(DIRECTORY include/${PROJECT_NAME}/
#   DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION}
#   FILES_MATCHING PATTERN "*.h"
#   PATTERN ".svn" EXCLUDE
# )

## Mark other files for installation (e.g. launch and bag files, etc.)
# install(FILES
#   # myfile1
#   # myfile2
#   DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
# )

#############
## Testing ##
#############

## Add gtest based cpp test target and link libraries
# catkin_add_gtest(${PROJECT_NAME}-test test/test_shape_simple_classifier.cpp)
# if(TARGET ${PROJECT_NAME}-test)
#   target_link_libraries(${PROJECT_NAME}-test ${PROJECT_NAME})
# endif()

## Add folders to be run by python nosetests
# catkin_add_nosetests(test)
