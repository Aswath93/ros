# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "maidbot_laser: 1 messages, 0 services")

set(MSG_I_FLAGS "-Imaidbot_laser:/home/aswath/ros/src/maidbot_laser/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(maidbot_laser_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/aswath/ros/src/maidbot_laser/msg/position.msg" NAME_WE)
add_custom_target(_maidbot_laser_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "maidbot_laser" "/home/aswath/ros/src/maidbot_laser/msg/position.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(maidbot_laser
  "/home/aswath/ros/src/maidbot_laser/msg/position.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/maidbot_laser
)

### Generating Services

### Generating Module File
_generate_module_cpp(maidbot_laser
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/maidbot_laser
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(maidbot_laser_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(maidbot_laser_generate_messages maidbot_laser_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/aswath/ros/src/maidbot_laser/msg/position.msg" NAME_WE)
add_dependencies(maidbot_laser_generate_messages_cpp _maidbot_laser_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(maidbot_laser_gencpp)
add_dependencies(maidbot_laser_gencpp maidbot_laser_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS maidbot_laser_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(maidbot_laser
  "/home/aswath/ros/src/maidbot_laser/msg/position.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/maidbot_laser
)

### Generating Services

### Generating Module File
_generate_module_lisp(maidbot_laser
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/maidbot_laser
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(maidbot_laser_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(maidbot_laser_generate_messages maidbot_laser_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/aswath/ros/src/maidbot_laser/msg/position.msg" NAME_WE)
add_dependencies(maidbot_laser_generate_messages_lisp _maidbot_laser_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(maidbot_laser_genlisp)
add_dependencies(maidbot_laser_genlisp maidbot_laser_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS maidbot_laser_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(maidbot_laser
  "/home/aswath/ros/src/maidbot_laser/msg/position.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/maidbot_laser
)

### Generating Services

### Generating Module File
_generate_module_py(maidbot_laser
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/maidbot_laser
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(maidbot_laser_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(maidbot_laser_generate_messages maidbot_laser_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/aswath/ros/src/maidbot_laser/msg/position.msg" NAME_WE)
add_dependencies(maidbot_laser_generate_messages_py _maidbot_laser_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(maidbot_laser_genpy)
add_dependencies(maidbot_laser_genpy maidbot_laser_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS maidbot_laser_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/maidbot_laser)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/maidbot_laser
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(maidbot_laser_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/maidbot_laser)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/maidbot_laser
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(maidbot_laser_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/maidbot_laser)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/maidbot_laser\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/maidbot_laser
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(maidbot_laser_generate_messages_py std_msgs_generate_messages_py)
