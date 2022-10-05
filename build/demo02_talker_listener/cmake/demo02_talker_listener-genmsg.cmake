# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "demo02_talker_listener: 1 messages, 0 services")

set(MSG_I_FLAGS "-Idemo02_talker_listener:/home/boiledman/learn_ros/src/demo02_talker_listener/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(demo02_talker_listener_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/boiledman/learn_ros/src/demo02_talker_listener/msg/Person.msg" NAME_WE)
add_custom_target(_demo02_talker_listener_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "demo02_talker_listener" "/home/boiledman/learn_ros/src/demo02_talker_listener/msg/Person.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(demo02_talker_listener
  "/home/boiledman/learn_ros/src/demo02_talker_listener/msg/Person.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/demo02_talker_listener
)

### Generating Services

### Generating Module File
_generate_module_cpp(demo02_talker_listener
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/demo02_talker_listener
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(demo02_talker_listener_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(demo02_talker_listener_generate_messages demo02_talker_listener_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/boiledman/learn_ros/src/demo02_talker_listener/msg/Person.msg" NAME_WE)
add_dependencies(demo02_talker_listener_generate_messages_cpp _demo02_talker_listener_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(demo02_talker_listener_gencpp)
add_dependencies(demo02_talker_listener_gencpp demo02_talker_listener_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS demo02_talker_listener_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(demo02_talker_listener
  "/home/boiledman/learn_ros/src/demo02_talker_listener/msg/Person.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/demo02_talker_listener
)

### Generating Services

### Generating Module File
_generate_module_eus(demo02_talker_listener
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/demo02_talker_listener
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(demo02_talker_listener_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(demo02_talker_listener_generate_messages demo02_talker_listener_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/boiledman/learn_ros/src/demo02_talker_listener/msg/Person.msg" NAME_WE)
add_dependencies(demo02_talker_listener_generate_messages_eus _demo02_talker_listener_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(demo02_talker_listener_geneus)
add_dependencies(demo02_talker_listener_geneus demo02_talker_listener_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS demo02_talker_listener_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(demo02_talker_listener
  "/home/boiledman/learn_ros/src/demo02_talker_listener/msg/Person.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/demo02_talker_listener
)

### Generating Services

### Generating Module File
_generate_module_lisp(demo02_talker_listener
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/demo02_talker_listener
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(demo02_talker_listener_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(demo02_talker_listener_generate_messages demo02_talker_listener_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/boiledman/learn_ros/src/demo02_talker_listener/msg/Person.msg" NAME_WE)
add_dependencies(demo02_talker_listener_generate_messages_lisp _demo02_talker_listener_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(demo02_talker_listener_genlisp)
add_dependencies(demo02_talker_listener_genlisp demo02_talker_listener_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS demo02_talker_listener_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(demo02_talker_listener
  "/home/boiledman/learn_ros/src/demo02_talker_listener/msg/Person.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/demo02_talker_listener
)

### Generating Services

### Generating Module File
_generate_module_nodejs(demo02_talker_listener
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/demo02_talker_listener
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(demo02_talker_listener_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(demo02_talker_listener_generate_messages demo02_talker_listener_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/boiledman/learn_ros/src/demo02_talker_listener/msg/Person.msg" NAME_WE)
add_dependencies(demo02_talker_listener_generate_messages_nodejs _demo02_talker_listener_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(demo02_talker_listener_gennodejs)
add_dependencies(demo02_talker_listener_gennodejs demo02_talker_listener_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS demo02_talker_listener_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(demo02_talker_listener
  "/home/boiledman/learn_ros/src/demo02_talker_listener/msg/Person.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/demo02_talker_listener
)

### Generating Services

### Generating Module File
_generate_module_py(demo02_talker_listener
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/demo02_talker_listener
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(demo02_talker_listener_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(demo02_talker_listener_generate_messages demo02_talker_listener_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/boiledman/learn_ros/src/demo02_talker_listener/msg/Person.msg" NAME_WE)
add_dependencies(demo02_talker_listener_generate_messages_py _demo02_talker_listener_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(demo02_talker_listener_genpy)
add_dependencies(demo02_talker_listener_genpy demo02_talker_listener_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS demo02_talker_listener_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/demo02_talker_listener)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/demo02_talker_listener
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(demo02_talker_listener_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/demo02_talker_listener)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/demo02_talker_listener
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(demo02_talker_listener_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/demo02_talker_listener)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/demo02_talker_listener
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(demo02_talker_listener_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/demo02_talker_listener)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/demo02_talker_listener
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(demo02_talker_listener_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/demo02_talker_listener)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/demo02_talker_listener\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/demo02_talker_listener
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(demo02_talker_listener_generate_messages_py std_msgs_generate_messages_py)
endif()
