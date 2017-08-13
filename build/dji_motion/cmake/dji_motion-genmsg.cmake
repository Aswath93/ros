# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "dji_motion: 1 messages, 0 services")

set(MSG_I_FLAGS "-Idji_motion:/home/aswath/ros/src/dji_motion/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(dji_motion_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/aswath/ros/src/dji_motion/msg/target_pose.msg" NAME_WE)
add_custom_target(_dji_motion_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dji_motion" "/home/aswath/ros/src/dji_motion/msg/target_pose.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(dji_motion
  "/home/aswath/ros/src/dji_motion/msg/target_pose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_motion
)

### Generating Services

### Generating Module File
_generate_module_cpp(dji_motion
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_motion
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(dji_motion_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(dji_motion_generate_messages dji_motion_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/aswath/ros/src/dji_motion/msg/target_pose.msg" NAME_WE)
add_dependencies(dji_motion_generate_messages_cpp _dji_motion_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dji_motion_gencpp)
add_dependencies(dji_motion_gencpp dji_motion_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dji_motion_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(dji_motion
  "/home/aswath/ros/src/dji_motion/msg/target_pose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_motion
)

### Generating Services

### Generating Module File
_generate_module_lisp(dji_motion
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_motion
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(dji_motion_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(dji_motion_generate_messages dji_motion_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/aswath/ros/src/dji_motion/msg/target_pose.msg" NAME_WE)
add_dependencies(dji_motion_generate_messages_lisp _dji_motion_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dji_motion_genlisp)
add_dependencies(dji_motion_genlisp dji_motion_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dji_motion_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(dji_motion
  "/home/aswath/ros/src/dji_motion/msg/target_pose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_motion
)

### Generating Services

### Generating Module File
_generate_module_py(dji_motion
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_motion
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(dji_motion_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(dji_motion_generate_messages dji_motion_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/aswath/ros/src/dji_motion/msg/target_pose.msg" NAME_WE)
add_dependencies(dji_motion_generate_messages_py _dji_motion_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dji_motion_genpy)
add_dependencies(dji_motion_genpy dji_motion_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dji_motion_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_motion)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dji_motion
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(dji_motion_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_motion)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dji_motion
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(dji_motion_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_motion)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_motion\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dji_motion
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(dji_motion_generate_messages_py std_msgs_generate_messages_py)
