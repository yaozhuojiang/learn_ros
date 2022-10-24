# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "demo24_action: 7 messages, 0 services")

set(MSG_I_FLAGS "-Idemo24_action:/home/boiledman/learn_ros/devel/share/demo24_action/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(demo24_action_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsAction.msg" NAME_WE)
add_custom_target(_demo24_action_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "demo24_action" "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsAction.msg" "demo24_action/AddIntsActionResult:demo24_action/AddIntsActionFeedback:demo24_action/AddIntsActionGoal:demo24_action/AddIntsGoal:demo24_action/AddIntsResult:actionlib_msgs/GoalStatus:std_msgs/Header:actionlib_msgs/GoalID:demo24_action/AddIntsFeedback"
)

get_filename_component(_filename "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsActionGoal.msg" NAME_WE)
add_custom_target(_demo24_action_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "demo24_action" "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsActionGoal.msg" "demo24_action/AddIntsGoal:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsActionResult.msg" NAME_WE)
add_custom_target(_demo24_action_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "demo24_action" "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsActionResult.msg" "demo24_action/AddIntsResult:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:std_msgs/Header"
)

get_filename_component(_filename "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsActionFeedback.msg" NAME_WE)
add_custom_target(_demo24_action_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "demo24_action" "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsActionFeedback.msg" "actionlib_msgs/GoalID:demo24_action/AddIntsFeedback:actionlib_msgs/GoalStatus:std_msgs/Header"
)

get_filename_component(_filename "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsGoal.msg" NAME_WE)
add_custom_target(_demo24_action_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "demo24_action" "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsGoal.msg" ""
)

get_filename_component(_filename "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsResult.msg" NAME_WE)
add_custom_target(_demo24_action_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "demo24_action" "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsResult.msg" ""
)

get_filename_component(_filename "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsFeedback.msg" NAME_WE)
add_custom_target(_demo24_action_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "demo24_action" "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsFeedback.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(demo24_action
  "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsAction.msg"
  "${MSG_I_FLAGS}"
  "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsActionResult.msg;/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsActionFeedback.msg;/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsActionGoal.msg;/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsGoal.msg;/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/demo24_action
)
_generate_msg_cpp(demo24_action
  "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/demo24_action
)
_generate_msg_cpp(demo24_action
  "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/demo24_action
)
_generate_msg_cpp(demo24_action
  "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/demo24_action
)
_generate_msg_cpp(demo24_action
  "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/demo24_action
)
_generate_msg_cpp(demo24_action
  "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/demo24_action
)
_generate_msg_cpp(demo24_action
  "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/demo24_action
)

### Generating Services

### Generating Module File
_generate_module_cpp(demo24_action
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/demo24_action
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(demo24_action_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(demo24_action_generate_messages demo24_action_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsAction.msg" NAME_WE)
add_dependencies(demo24_action_generate_messages_cpp _demo24_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsActionGoal.msg" NAME_WE)
add_dependencies(demo24_action_generate_messages_cpp _demo24_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsActionResult.msg" NAME_WE)
add_dependencies(demo24_action_generate_messages_cpp _demo24_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsActionFeedback.msg" NAME_WE)
add_dependencies(demo24_action_generate_messages_cpp _demo24_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsGoal.msg" NAME_WE)
add_dependencies(demo24_action_generate_messages_cpp _demo24_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsResult.msg" NAME_WE)
add_dependencies(demo24_action_generate_messages_cpp _demo24_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsFeedback.msg" NAME_WE)
add_dependencies(demo24_action_generate_messages_cpp _demo24_action_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(demo24_action_gencpp)
add_dependencies(demo24_action_gencpp demo24_action_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS demo24_action_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(demo24_action
  "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsAction.msg"
  "${MSG_I_FLAGS}"
  "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsActionResult.msg;/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsActionFeedback.msg;/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsActionGoal.msg;/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsGoal.msg;/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/demo24_action
)
_generate_msg_eus(demo24_action
  "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/demo24_action
)
_generate_msg_eus(demo24_action
  "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/demo24_action
)
_generate_msg_eus(demo24_action
  "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/demo24_action
)
_generate_msg_eus(demo24_action
  "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/demo24_action
)
_generate_msg_eus(demo24_action
  "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/demo24_action
)
_generate_msg_eus(demo24_action
  "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/demo24_action
)

### Generating Services

### Generating Module File
_generate_module_eus(demo24_action
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/demo24_action
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(demo24_action_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(demo24_action_generate_messages demo24_action_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsAction.msg" NAME_WE)
add_dependencies(demo24_action_generate_messages_eus _demo24_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsActionGoal.msg" NAME_WE)
add_dependencies(demo24_action_generate_messages_eus _demo24_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsActionResult.msg" NAME_WE)
add_dependencies(demo24_action_generate_messages_eus _demo24_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsActionFeedback.msg" NAME_WE)
add_dependencies(demo24_action_generate_messages_eus _demo24_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsGoal.msg" NAME_WE)
add_dependencies(demo24_action_generate_messages_eus _demo24_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsResult.msg" NAME_WE)
add_dependencies(demo24_action_generate_messages_eus _demo24_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsFeedback.msg" NAME_WE)
add_dependencies(demo24_action_generate_messages_eus _demo24_action_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(demo24_action_geneus)
add_dependencies(demo24_action_geneus demo24_action_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS demo24_action_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(demo24_action
  "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsAction.msg"
  "${MSG_I_FLAGS}"
  "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsActionResult.msg;/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsActionFeedback.msg;/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsActionGoal.msg;/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsGoal.msg;/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/demo24_action
)
_generate_msg_lisp(demo24_action
  "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/demo24_action
)
_generate_msg_lisp(demo24_action
  "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/demo24_action
)
_generate_msg_lisp(demo24_action
  "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/demo24_action
)
_generate_msg_lisp(demo24_action
  "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/demo24_action
)
_generate_msg_lisp(demo24_action
  "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/demo24_action
)
_generate_msg_lisp(demo24_action
  "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/demo24_action
)

### Generating Services

### Generating Module File
_generate_module_lisp(demo24_action
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/demo24_action
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(demo24_action_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(demo24_action_generate_messages demo24_action_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsAction.msg" NAME_WE)
add_dependencies(demo24_action_generate_messages_lisp _demo24_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsActionGoal.msg" NAME_WE)
add_dependencies(demo24_action_generate_messages_lisp _demo24_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsActionResult.msg" NAME_WE)
add_dependencies(demo24_action_generate_messages_lisp _demo24_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsActionFeedback.msg" NAME_WE)
add_dependencies(demo24_action_generate_messages_lisp _demo24_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsGoal.msg" NAME_WE)
add_dependencies(demo24_action_generate_messages_lisp _demo24_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsResult.msg" NAME_WE)
add_dependencies(demo24_action_generate_messages_lisp _demo24_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsFeedback.msg" NAME_WE)
add_dependencies(demo24_action_generate_messages_lisp _demo24_action_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(demo24_action_genlisp)
add_dependencies(demo24_action_genlisp demo24_action_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS demo24_action_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(demo24_action
  "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsAction.msg"
  "${MSG_I_FLAGS}"
  "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsActionResult.msg;/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsActionFeedback.msg;/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsActionGoal.msg;/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsGoal.msg;/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/demo24_action
)
_generate_msg_nodejs(demo24_action
  "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/demo24_action
)
_generate_msg_nodejs(demo24_action
  "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/demo24_action
)
_generate_msg_nodejs(demo24_action
  "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/demo24_action
)
_generate_msg_nodejs(demo24_action
  "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/demo24_action
)
_generate_msg_nodejs(demo24_action
  "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/demo24_action
)
_generate_msg_nodejs(demo24_action
  "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/demo24_action
)

### Generating Services

### Generating Module File
_generate_module_nodejs(demo24_action
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/demo24_action
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(demo24_action_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(demo24_action_generate_messages demo24_action_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsAction.msg" NAME_WE)
add_dependencies(demo24_action_generate_messages_nodejs _demo24_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsActionGoal.msg" NAME_WE)
add_dependencies(demo24_action_generate_messages_nodejs _demo24_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsActionResult.msg" NAME_WE)
add_dependencies(demo24_action_generate_messages_nodejs _demo24_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsActionFeedback.msg" NAME_WE)
add_dependencies(demo24_action_generate_messages_nodejs _demo24_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsGoal.msg" NAME_WE)
add_dependencies(demo24_action_generate_messages_nodejs _demo24_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsResult.msg" NAME_WE)
add_dependencies(demo24_action_generate_messages_nodejs _demo24_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsFeedback.msg" NAME_WE)
add_dependencies(demo24_action_generate_messages_nodejs _demo24_action_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(demo24_action_gennodejs)
add_dependencies(demo24_action_gennodejs demo24_action_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS demo24_action_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(demo24_action
  "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsAction.msg"
  "${MSG_I_FLAGS}"
  "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsActionResult.msg;/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsActionFeedback.msg;/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsActionGoal.msg;/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsGoal.msg;/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/demo24_action
)
_generate_msg_py(demo24_action
  "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/demo24_action
)
_generate_msg_py(demo24_action
  "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/demo24_action
)
_generate_msg_py(demo24_action
  "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/demo24_action
)
_generate_msg_py(demo24_action
  "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/demo24_action
)
_generate_msg_py(demo24_action
  "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/demo24_action
)
_generate_msg_py(demo24_action
  "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/demo24_action
)

### Generating Services

### Generating Module File
_generate_module_py(demo24_action
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/demo24_action
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(demo24_action_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(demo24_action_generate_messages demo24_action_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsAction.msg" NAME_WE)
add_dependencies(demo24_action_generate_messages_py _demo24_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsActionGoal.msg" NAME_WE)
add_dependencies(demo24_action_generate_messages_py _demo24_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsActionResult.msg" NAME_WE)
add_dependencies(demo24_action_generate_messages_py _demo24_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsActionFeedback.msg" NAME_WE)
add_dependencies(demo24_action_generate_messages_py _demo24_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsGoal.msg" NAME_WE)
add_dependencies(demo24_action_generate_messages_py _demo24_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsResult.msg" NAME_WE)
add_dependencies(demo24_action_generate_messages_py _demo24_action_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/boiledman/learn_ros/devel/share/demo24_action/msg/AddIntsFeedback.msg" NAME_WE)
add_dependencies(demo24_action_generate_messages_py _demo24_action_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(demo24_action_genpy)
add_dependencies(demo24_action_genpy demo24_action_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS demo24_action_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/demo24_action)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/demo24_action
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(demo24_action_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(demo24_action_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/demo24_action)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/demo24_action
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(demo24_action_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(demo24_action_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/demo24_action)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/demo24_action
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(demo24_action_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(demo24_action_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/demo24_action)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/demo24_action
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(demo24_action_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(demo24_action_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/demo24_action)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/demo24_action\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/demo24_action
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(demo24_action_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(demo24_action_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
