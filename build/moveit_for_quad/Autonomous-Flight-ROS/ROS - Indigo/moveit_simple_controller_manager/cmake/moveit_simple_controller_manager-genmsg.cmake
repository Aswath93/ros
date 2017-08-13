# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(WARNING "Invoking generate_messages() without having added any message or service file before.
You should either add add_message_files() and/or add_service_files() calls or remove the invocation of generate_messages().")
message(STATUS "moveit_simple_controller_manager: 0 messages, 0 services")

set(MSG_I_FLAGS "-Iaction_controller:/home/aswath/ros/src/moveit_for_quad/Autonomous-Flight-ROS/ROS - Indigo/action_controller/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Itrajectory_msgs:/opt/ros/indigo/share/trajectory_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/indigo/share/actionlib_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(moveit_simple_controller_manager_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services

### Generating Module File
_generate_module_cpp(moveit_simple_controller_manager
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/moveit_simple_controller_manager
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(moveit_simple_controller_manager_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(moveit_simple_controller_manager_generate_messages moveit_simple_controller_manager_generate_messages_cpp)

# add dependencies to all check dependencies targets

# target for backward compatibility
add_custom_target(moveit_simple_controller_manager_gencpp)
add_dependencies(moveit_simple_controller_manager_gencpp moveit_simple_controller_manager_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS moveit_simple_controller_manager_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services

### Generating Module File
_generate_module_lisp(moveit_simple_controller_manager
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/moveit_simple_controller_manager
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(moveit_simple_controller_manager_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(moveit_simple_controller_manager_generate_messages moveit_simple_controller_manager_generate_messages_lisp)

# add dependencies to all check dependencies targets

# target for backward compatibility
add_custom_target(moveit_simple_controller_manager_genlisp)
add_dependencies(moveit_simple_controller_manager_genlisp moveit_simple_controller_manager_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS moveit_simple_controller_manager_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages

### Generating Services

### Generating Module File
_generate_module_py(moveit_simple_controller_manager
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/moveit_simple_controller_manager
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(moveit_simple_controller_manager_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(moveit_simple_controller_manager_generate_messages moveit_simple_controller_manager_generate_messages_py)

# add dependencies to all check dependencies targets

# target for backward compatibility
add_custom_target(moveit_simple_controller_manager_genpy)
add_dependencies(moveit_simple_controller_manager_genpy moveit_simple_controller_manager_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS moveit_simple_controller_manager_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/moveit_simple_controller_manager)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/moveit_simple_controller_manager
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(moveit_simple_controller_manager_generate_messages_cpp action_controller_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/moveit_simple_controller_manager)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/moveit_simple_controller_manager
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(moveit_simple_controller_manager_generate_messages_lisp action_controller_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/moveit_simple_controller_manager)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/moveit_simple_controller_manager\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/moveit_simple_controller_manager
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(moveit_simple_controller_manager_generate_messages_py action_controller_generate_messages_py)
