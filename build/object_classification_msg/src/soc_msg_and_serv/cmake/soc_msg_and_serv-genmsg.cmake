# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "soc_msg_and_serv: 0 messages, 1 services")

set(MSG_I_FLAGS "-Isensor_msgs:/opt/ros/hydro/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/hydro/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/hydro/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(soc_msg_and_serv_generate_messages ALL)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(soc_msg_and_serv
  "/home/paschalidoud/pandora_RoCKIn2014/src/object_classification_msg/src/soc_msg_and_serv/srv/segment_and_classify.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/String.msg;/opt/ros/hydro/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/soc_msg_and_serv
)

### Generating Module File
_generate_module_cpp(soc_msg_and_serv
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/soc_msg_and_serv
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(soc_msg_and_serv_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(soc_msg_and_serv_generate_messages soc_msg_and_serv_generate_messages_cpp)

# target for backward compatibility
add_custom_target(soc_msg_and_serv_gencpp)
add_dependencies(soc_msg_and_serv_gencpp soc_msg_and_serv_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS soc_msg_and_serv_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(soc_msg_and_serv
  "/home/paschalidoud/pandora_RoCKIn2014/src/object_classification_msg/src/soc_msg_and_serv/srv/segment_and_classify.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/String.msg;/opt/ros/hydro/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/soc_msg_and_serv
)

### Generating Module File
_generate_module_lisp(soc_msg_and_serv
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/soc_msg_and_serv
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(soc_msg_and_serv_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(soc_msg_and_serv_generate_messages soc_msg_and_serv_generate_messages_lisp)

# target for backward compatibility
add_custom_target(soc_msg_and_serv_genlisp)
add_dependencies(soc_msg_and_serv_genlisp soc_msg_and_serv_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS soc_msg_and_serv_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(soc_msg_and_serv
  "/home/paschalidoud/pandora_RoCKIn2014/src/object_classification_msg/src/soc_msg_and_serv/srv/segment_and_classify.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/String.msg;/opt/ros/hydro/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/soc_msg_and_serv
)

### Generating Module File
_generate_module_py(soc_msg_and_serv
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/soc_msg_and_serv
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(soc_msg_and_serv_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(soc_msg_and_serv_generate_messages soc_msg_and_serv_generate_messages_py)

# target for backward compatibility
add_custom_target(soc_msg_and_serv_genpy)
add_dependencies(soc_msg_and_serv_genpy soc_msg_and_serv_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS soc_msg_and_serv_generate_messages_py)


debug_message(2 "soc_msg_and_serv: Iflags=${MSG_I_FLAGS}")


if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/soc_msg_and_serv)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/soc_msg_and_serv
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(soc_msg_and_serv_generate_messages_cpp sensor_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/soc_msg_and_serv)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/soc_msg_and_serv
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(soc_msg_and_serv_generate_messages_lisp sensor_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/soc_msg_and_serv)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/soc_msg_and_serv\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/soc_msg_and_serv
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(soc_msg_and_serv_generate_messages_py sensor_msgs_generate_messages_py)
