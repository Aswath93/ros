# Install script for directory: /home/aswath/ros/src/Onboard-SDK-ROS/dji_sdk

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/home/aswath/ros/install")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "Debug")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  INCLUDE("/home/aswath/ros/build/Onboard-SDK-ROS/dji_sdk/catkin_generated/safe_execute_install.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dji_sdk/msg" TYPE FILE FILES
    "/home/aswath/ros/src/Onboard-SDK-ROS/dji_sdk/msg/A3GPS.msg"
    "/home/aswath/ros/src/Onboard-SDK-ROS/dji_sdk/msg/A3RTK.msg"
    "/home/aswath/ros/src/Onboard-SDK-ROS/dji_sdk/msg/Acceleration.msg"
    "/home/aswath/ros/src/Onboard-SDK-ROS/dji_sdk/msg/AttitudeQuaternion.msg"
    "/home/aswath/ros/src/Onboard-SDK-ROS/dji_sdk/msg/Compass.msg"
    "/home/aswath/ros/src/Onboard-SDK-ROS/dji_sdk/msg/FlightControlInfo.msg"
    "/home/aswath/ros/src/Onboard-SDK-ROS/dji_sdk/msg/Gimbal.msg"
    "/home/aswath/ros/src/Onboard-SDK-ROS/dji_sdk/msg/GlobalPosition.msg"
    "/home/aswath/ros/src/Onboard-SDK-ROS/dji_sdk/msg/LocalPosition.msg"
    "/home/aswath/ros/src/Onboard-SDK-ROS/dji_sdk/msg/PowerStatus.msg"
    "/home/aswath/ros/src/Onboard-SDK-ROS/dji_sdk/msg/RCChannels.msg"
    "/home/aswath/ros/src/Onboard-SDK-ROS/dji_sdk/msg/Velocity.msg"
    "/home/aswath/ros/src/Onboard-SDK-ROS/dji_sdk/msg/Waypoint.msg"
    "/home/aswath/ros/src/Onboard-SDK-ROS/dji_sdk/msg/WaypointList.msg"
    "/home/aswath/ros/src/Onboard-SDK-ROS/dji_sdk/msg/TransparentTransmissionData.msg"
    "/home/aswath/ros/src/Onboard-SDK-ROS/dji_sdk/msg/TimeStamp.msg"
    "/home/aswath/ros/src/Onboard-SDK-ROS/dji_sdk/msg/obs_msg.msg"
    "/home/aswath/ros/src/Onboard-SDK-ROS/dji_sdk/msg/MissionPushInfo.msg"
    "/home/aswath/ros/src/Onboard-SDK-ROS/dji_sdk/msg/MissionWaypointAction.msg"
    "/home/aswath/ros/src/Onboard-SDK-ROS/dji_sdk/msg/MissionWaypoint.msg"
    "/home/aswath/ros/src/Onboard-SDK-ROS/dji_sdk/msg/MissionWaypointTask.msg"
    "/home/aswath/ros/src/Onboard-SDK-ROS/dji_sdk/msg/MissionHotpointTask.msg"
    "/home/aswath/ros/src/Onboard-SDK-ROS/dji_sdk/msg/MissionFollowmeTask.msg"
    "/home/aswath/ros/src/Onboard-SDK-ROS/dji_sdk/msg/MissionFollowmeTarget.msg"
    "/home/aswath/ros/src/Onboard-SDK-ROS/dji_sdk/msg/MissionStatusWaypoint.msg"
    "/home/aswath/ros/src/Onboard-SDK-ROS/dji_sdk/msg/MissionStatusHotpoint.msg"
    "/home/aswath/ros/src/Onboard-SDK-ROS/dji_sdk/msg/MissionStatusFollowme.msg"
    "/home/aswath/ros/src/Onboard-SDK-ROS/dji_sdk/msg/MissionStatusOther.msg"
    "/home/aswath/ros/src/Onboard-SDK-ROS/dji_sdk/msg/MissionEventWpUpload.msg"
    "/home/aswath/ros/src/Onboard-SDK-ROS/dji_sdk/msg/MissionEventWpAction.msg"
    "/home/aswath/ros/src/Onboard-SDK-ROS/dji_sdk/msg/MissionEventWpReach.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dji_sdk/srv" TYPE FILE FILES
    "/home/aswath/ros/src/Onboard-SDK-ROS/dji_sdk/srv/Activation.srv"
    "/home/aswath/ros/src/Onboard-SDK-ROS/dji_sdk/srv/AttitudeControl.srv"
    "/home/aswath/ros/src/Onboard-SDK-ROS/dji_sdk/srv/CameraActionControl.srv"
    "/home/aswath/ros/src/Onboard-SDK-ROS/dji_sdk/srv/DroneTaskControl.srv"
    "/home/aswath/ros/src/Onboard-SDK-ROS/dji_sdk/srv/GimbalAngleControl.srv"
    "/home/aswath/ros/src/Onboard-SDK-ROS/dji_sdk/srv/GimbalSpeedControl.srv"
    "/home/aswath/ros/src/Onboard-SDK-ROS/dji_sdk/srv/GlobalPositionControl.srv"
    "/home/aswath/ros/src/Onboard-SDK-ROS/dji_sdk/srv/LocalPositionControl.srv"
    "/home/aswath/ros/src/Onboard-SDK-ROS/dji_sdk/srv/SDKPermissionControl.srv"
    "/home/aswath/ros/src/Onboard-SDK-ROS/dji_sdk/srv/SendDataToRemoteDevice.srv"
    "/home/aswath/ros/src/Onboard-SDK-ROS/dji_sdk/srv/VelocityControl.srv"
    "/home/aswath/ros/src/Onboard-SDK-ROS/dji_sdk/srv/VersionCheck.srv"
    "/home/aswath/ros/src/Onboard-SDK-ROS/dji_sdk/srv/DroneArmControl.srv"
    "/home/aswath/ros/src/Onboard-SDK-ROS/dji_sdk/srv/SyncFlagControl.srv"
    "/home/aswath/ros/src/Onboard-SDK-ROS/dji_sdk/srv/MessageFrequencyControl.srv"
    "/home/aswath/ros/src/Onboard-SDK-ROS/dji_sdk/srv/VirtualRCEnableControl.srv"
    "/home/aswath/ros/src/Onboard-SDK-ROS/dji_sdk/srv/VirtualRCDataControl.srv"
    "/home/aswath/ros/src/Onboard-SDK-ROS/dji_sdk/srv/MissionStart.srv"
    "/home/aswath/ros/src/Onboard-SDK-ROS/dji_sdk/srv/MissionPause.srv"
    "/home/aswath/ros/src/Onboard-SDK-ROS/dji_sdk/srv/MissionCancel.srv"
    "/home/aswath/ros/src/Onboard-SDK-ROS/dji_sdk/srv/MissionWpUpload.srv"
    "/home/aswath/ros/src/Onboard-SDK-ROS/dji_sdk/srv/MissionWpSetSpeed.srv"
    "/home/aswath/ros/src/Onboard-SDK-ROS/dji_sdk/srv/MissionWpGetSpeed.srv"
    "/home/aswath/ros/src/Onboard-SDK-ROS/dji_sdk/srv/MissionWpDownload.srv"
    "/home/aswath/ros/src/Onboard-SDK-ROS/dji_sdk/srv/MissionHpUpload.srv"
    "/home/aswath/ros/src/Onboard-SDK-ROS/dji_sdk/srv/MissionHpDownload.srv"
    "/home/aswath/ros/src/Onboard-SDK-ROS/dji_sdk/srv/MissionHpSetSpeed.srv"
    "/home/aswath/ros/src/Onboard-SDK-ROS/dji_sdk/srv/MissionHpSetRadius.srv"
    "/home/aswath/ros/src/Onboard-SDK-ROS/dji_sdk/srv/MissionHpResetYaw.srv"
    "/home/aswath/ros/src/Onboard-SDK-ROS/dji_sdk/srv/MissionFmUpload.srv"
    "/home/aswath/ros/src/Onboard-SDK-ROS/dji_sdk/srv/MissionFmSetTarget.srv"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dji_sdk/action" TYPE FILE FILES
    "/home/aswath/ros/src/Onboard-SDK-ROS/dji_sdk/action/GlobalPositionNavigation.action"
    "/home/aswath/ros/src/Onboard-SDK-ROS/dji_sdk/action/LocalPositionNavigation.action"
    "/home/aswath/ros/src/Onboard-SDK-ROS/dji_sdk/action/WaypointNavigation.action"
    "/home/aswath/ros/src/Onboard-SDK-ROS/dji_sdk/action/DroneTask.action"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dji_sdk/msg" TYPE FILE FILES
    "/home/aswath/ros/devel/share/dji_sdk/msg/GlobalPositionNavigationAction.msg"
    "/home/aswath/ros/devel/share/dji_sdk/msg/GlobalPositionNavigationActionGoal.msg"
    "/home/aswath/ros/devel/share/dji_sdk/msg/GlobalPositionNavigationActionResult.msg"
    "/home/aswath/ros/devel/share/dji_sdk/msg/GlobalPositionNavigationActionFeedback.msg"
    "/home/aswath/ros/devel/share/dji_sdk/msg/GlobalPositionNavigationGoal.msg"
    "/home/aswath/ros/devel/share/dji_sdk/msg/GlobalPositionNavigationResult.msg"
    "/home/aswath/ros/devel/share/dji_sdk/msg/GlobalPositionNavigationFeedback.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dji_sdk/msg" TYPE FILE FILES
    "/home/aswath/ros/devel/share/dji_sdk/msg/LocalPositionNavigationAction.msg"
    "/home/aswath/ros/devel/share/dji_sdk/msg/LocalPositionNavigationActionGoal.msg"
    "/home/aswath/ros/devel/share/dji_sdk/msg/LocalPositionNavigationActionResult.msg"
    "/home/aswath/ros/devel/share/dji_sdk/msg/LocalPositionNavigationActionFeedback.msg"
    "/home/aswath/ros/devel/share/dji_sdk/msg/LocalPositionNavigationGoal.msg"
    "/home/aswath/ros/devel/share/dji_sdk/msg/LocalPositionNavigationResult.msg"
    "/home/aswath/ros/devel/share/dji_sdk/msg/LocalPositionNavigationFeedback.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dji_sdk/msg" TYPE FILE FILES
    "/home/aswath/ros/devel/share/dji_sdk/msg/WaypointNavigationAction.msg"
    "/home/aswath/ros/devel/share/dji_sdk/msg/WaypointNavigationActionGoal.msg"
    "/home/aswath/ros/devel/share/dji_sdk/msg/WaypointNavigationActionResult.msg"
    "/home/aswath/ros/devel/share/dji_sdk/msg/WaypointNavigationActionFeedback.msg"
    "/home/aswath/ros/devel/share/dji_sdk/msg/WaypointNavigationGoal.msg"
    "/home/aswath/ros/devel/share/dji_sdk/msg/WaypointNavigationResult.msg"
    "/home/aswath/ros/devel/share/dji_sdk/msg/WaypointNavigationFeedback.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dji_sdk/msg" TYPE FILE FILES
    "/home/aswath/ros/devel/share/dji_sdk/msg/DroneTaskAction.msg"
    "/home/aswath/ros/devel/share/dji_sdk/msg/DroneTaskActionGoal.msg"
    "/home/aswath/ros/devel/share/dji_sdk/msg/DroneTaskActionResult.msg"
    "/home/aswath/ros/devel/share/dji_sdk/msg/DroneTaskActionFeedback.msg"
    "/home/aswath/ros/devel/share/dji_sdk/msg/DroneTaskGoal.msg"
    "/home/aswath/ros/devel/share/dji_sdk/msg/DroneTaskResult.msg"
    "/home/aswath/ros/devel/share/dji_sdk/msg/DroneTaskFeedback.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dji_sdk/cmake" TYPE FILE FILES "/home/aswath/ros/build/Onboard-SDK-ROS/dji_sdk/catkin_generated/installspace/dji_sdk-msg-paths.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/aswath/ros/devel/include/dji_sdk")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/aswath/ros/devel/share/common-lisp/ros/dji_sdk")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/aswath/ros/devel/lib/python2.7/dist-packages/dji_sdk")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/aswath/ros/devel/lib/python2.7/dist-packages/dji_sdk" REGEX "/\\_\\_init\\_\\_\\.py$" EXCLUDE REGEX "/\\_\\_init\\_\\_\\.pyc$" EXCLUDE)
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/aswath/ros/devel/lib/python2.7/dist-packages/dji_sdk" FILES_MATCHING REGEX "/home/aswath/ros/devel/lib/python2.7/dist-packages/dji_sdk/.+/__init__.pyc?$")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/aswath/ros/build/Onboard-SDK-ROS/dji_sdk/catkin_generated/installspace/dji_sdk.pc")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dji_sdk/cmake" TYPE FILE FILES "/home/aswath/ros/build/Onboard-SDK-ROS/dji_sdk/catkin_generated/installspace/dji_sdk-msg-extras.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dji_sdk/cmake" TYPE FILE FILES
    "/home/aswath/ros/build/Onboard-SDK-ROS/dji_sdk/catkin_generated/installspace/dji_sdkConfig.cmake"
    "/home/aswath/ros/build/Onboard-SDK-ROS/dji_sdk/catkin_generated/installspace/dji_sdkConfig-version.cmake"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dji_sdk" TYPE FILE FILES "/home/aswath/ros/src/Onboard-SDK-ROS/dji_sdk/package.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/dji_sdk" TYPE DIRECTORY FILES "/home/aswath/ros/src/Onboard-SDK-ROS/dji_sdk/include/dji_sdk/")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/dji_sdk/dji_sdk_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/dji_sdk/dji_sdk_node")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/dji_sdk/dji_sdk_node"
         RPATH "")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/dji_sdk" TYPE EXECUTABLE FILES "/home/aswath/ros/devel/lib/dji_sdk/dji_sdk_node")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/dji_sdk/dji_sdk_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/dji_sdk/dji_sdk_node")
    FILE(RPATH_REMOVE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/dji_sdk/dji_sdk_node")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/dji_sdk/dji_sdk_node")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dji_sdk/launch" TYPE DIRECTORY FILES "/home/aswath/ros/src/Onboard-SDK-ROS/dji_sdk/launch")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

