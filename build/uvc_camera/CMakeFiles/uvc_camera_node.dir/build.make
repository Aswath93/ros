# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/aswath/ros/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/aswath/ros/build

# Include any dependencies generated for this target.
include uvc_camera/CMakeFiles/uvc_camera_node.dir/depend.make

# Include the progress variables for this target.
include uvc_camera/CMakeFiles/uvc_camera_node.dir/progress.make

# Include the compile flags for this target's objects.
include uvc_camera/CMakeFiles/uvc_camera_node.dir/flags.make

uvc_camera/CMakeFiles/uvc_camera_node.dir/src/camera_node.cpp.o: uvc_camera/CMakeFiles/uvc_camera_node.dir/flags.make
uvc_camera/CMakeFiles/uvc_camera_node.dir/src/camera_node.cpp.o: /home/aswath/ros/src/uvc_camera/src/camera_node.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/aswath/ros/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object uvc_camera/CMakeFiles/uvc_camera_node.dir/src/camera_node.cpp.o"
	cd /home/aswath/ros/build/uvc_camera && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/uvc_camera_node.dir/src/camera_node.cpp.o -c /home/aswath/ros/src/uvc_camera/src/camera_node.cpp

uvc_camera/CMakeFiles/uvc_camera_node.dir/src/camera_node.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/uvc_camera_node.dir/src/camera_node.cpp.i"
	cd /home/aswath/ros/build/uvc_camera && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/aswath/ros/src/uvc_camera/src/camera_node.cpp > CMakeFiles/uvc_camera_node.dir/src/camera_node.cpp.i

uvc_camera/CMakeFiles/uvc_camera_node.dir/src/camera_node.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/uvc_camera_node.dir/src/camera_node.cpp.s"
	cd /home/aswath/ros/build/uvc_camera && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/aswath/ros/src/uvc_camera/src/camera_node.cpp -o CMakeFiles/uvc_camera_node.dir/src/camera_node.cpp.s

uvc_camera/CMakeFiles/uvc_camera_node.dir/src/camera_node.cpp.o.requires:
.PHONY : uvc_camera/CMakeFiles/uvc_camera_node.dir/src/camera_node.cpp.o.requires

uvc_camera/CMakeFiles/uvc_camera_node.dir/src/camera_node.cpp.o.provides: uvc_camera/CMakeFiles/uvc_camera_node.dir/src/camera_node.cpp.o.requires
	$(MAKE) -f uvc_camera/CMakeFiles/uvc_camera_node.dir/build.make uvc_camera/CMakeFiles/uvc_camera_node.dir/src/camera_node.cpp.o.provides.build
.PHONY : uvc_camera/CMakeFiles/uvc_camera_node.dir/src/camera_node.cpp.o.provides

uvc_camera/CMakeFiles/uvc_camera_node.dir/src/camera_node.cpp.o.provides.build: uvc_camera/CMakeFiles/uvc_camera_node.dir/src/camera_node.cpp.o

uvc_camera/CMakeFiles/uvc_camera_node.dir/src/camera.cpp.o: uvc_camera/CMakeFiles/uvc_camera_node.dir/flags.make
uvc_camera/CMakeFiles/uvc_camera_node.dir/src/camera.cpp.o: /home/aswath/ros/src/uvc_camera/src/camera.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/aswath/ros/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object uvc_camera/CMakeFiles/uvc_camera_node.dir/src/camera.cpp.o"
	cd /home/aswath/ros/build/uvc_camera && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/uvc_camera_node.dir/src/camera.cpp.o -c /home/aswath/ros/src/uvc_camera/src/camera.cpp

uvc_camera/CMakeFiles/uvc_camera_node.dir/src/camera.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/uvc_camera_node.dir/src/camera.cpp.i"
	cd /home/aswath/ros/build/uvc_camera && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/aswath/ros/src/uvc_camera/src/camera.cpp > CMakeFiles/uvc_camera_node.dir/src/camera.cpp.i

uvc_camera/CMakeFiles/uvc_camera_node.dir/src/camera.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/uvc_camera_node.dir/src/camera.cpp.s"
	cd /home/aswath/ros/build/uvc_camera && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/aswath/ros/src/uvc_camera/src/camera.cpp -o CMakeFiles/uvc_camera_node.dir/src/camera.cpp.s

uvc_camera/CMakeFiles/uvc_camera_node.dir/src/camera.cpp.o.requires:
.PHONY : uvc_camera/CMakeFiles/uvc_camera_node.dir/src/camera.cpp.o.requires

uvc_camera/CMakeFiles/uvc_camera_node.dir/src/camera.cpp.o.provides: uvc_camera/CMakeFiles/uvc_camera_node.dir/src/camera.cpp.o.requires
	$(MAKE) -f uvc_camera/CMakeFiles/uvc_camera_node.dir/build.make uvc_camera/CMakeFiles/uvc_camera_node.dir/src/camera.cpp.o.provides.build
.PHONY : uvc_camera/CMakeFiles/uvc_camera_node.dir/src/camera.cpp.o.provides

uvc_camera/CMakeFiles/uvc_camera_node.dir/src/camera.cpp.o.provides.build: uvc_camera/CMakeFiles/uvc_camera_node.dir/src/camera.cpp.o

uvc_camera/CMakeFiles/uvc_camera_node.dir/src/uvc_cam.cpp.o: uvc_camera/CMakeFiles/uvc_camera_node.dir/flags.make
uvc_camera/CMakeFiles/uvc_camera_node.dir/src/uvc_cam.cpp.o: /home/aswath/ros/src/uvc_camera/src/uvc_cam.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/aswath/ros/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object uvc_camera/CMakeFiles/uvc_camera_node.dir/src/uvc_cam.cpp.o"
	cd /home/aswath/ros/build/uvc_camera && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/uvc_camera_node.dir/src/uvc_cam.cpp.o -c /home/aswath/ros/src/uvc_camera/src/uvc_cam.cpp

uvc_camera/CMakeFiles/uvc_camera_node.dir/src/uvc_cam.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/uvc_camera_node.dir/src/uvc_cam.cpp.i"
	cd /home/aswath/ros/build/uvc_camera && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/aswath/ros/src/uvc_camera/src/uvc_cam.cpp > CMakeFiles/uvc_camera_node.dir/src/uvc_cam.cpp.i

uvc_camera/CMakeFiles/uvc_camera_node.dir/src/uvc_cam.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/uvc_camera_node.dir/src/uvc_cam.cpp.s"
	cd /home/aswath/ros/build/uvc_camera && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/aswath/ros/src/uvc_camera/src/uvc_cam.cpp -o CMakeFiles/uvc_camera_node.dir/src/uvc_cam.cpp.s

uvc_camera/CMakeFiles/uvc_camera_node.dir/src/uvc_cam.cpp.o.requires:
.PHONY : uvc_camera/CMakeFiles/uvc_camera_node.dir/src/uvc_cam.cpp.o.requires

uvc_camera/CMakeFiles/uvc_camera_node.dir/src/uvc_cam.cpp.o.provides: uvc_camera/CMakeFiles/uvc_camera_node.dir/src/uvc_cam.cpp.o.requires
	$(MAKE) -f uvc_camera/CMakeFiles/uvc_camera_node.dir/build.make uvc_camera/CMakeFiles/uvc_camera_node.dir/src/uvc_cam.cpp.o.provides.build
.PHONY : uvc_camera/CMakeFiles/uvc_camera_node.dir/src/uvc_cam.cpp.o.provides

uvc_camera/CMakeFiles/uvc_camera_node.dir/src/uvc_cam.cpp.o.provides.build: uvc_camera/CMakeFiles/uvc_camera_node.dir/src/uvc_cam.cpp.o

# Object files for target uvc_camera_node
uvc_camera_node_OBJECTS = \
"CMakeFiles/uvc_camera_node.dir/src/camera_node.cpp.o" \
"CMakeFiles/uvc_camera_node.dir/src/camera.cpp.o" \
"CMakeFiles/uvc_camera_node.dir/src/uvc_cam.cpp.o"

# External object files for target uvc_camera_node
uvc_camera_node_EXTERNAL_OBJECTS =

/home/aswath/ros/devel/lib/uvc_camera/uvc_camera_node: uvc_camera/CMakeFiles/uvc_camera_node.dir/src/camera_node.cpp.o
/home/aswath/ros/devel/lib/uvc_camera/uvc_camera_node: uvc_camera/CMakeFiles/uvc_camera_node.dir/src/camera.cpp.o
/home/aswath/ros/devel/lib/uvc_camera/uvc_camera_node: uvc_camera/CMakeFiles/uvc_camera_node.dir/src/uvc_cam.cpp.o
/home/aswath/ros/devel/lib/uvc_camera/uvc_camera_node: uvc_camera/CMakeFiles/uvc_camera_node.dir/build.make
/home/aswath/ros/devel/lib/uvc_camera/uvc_camera_node: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/aswath/ros/devel/lib/uvc_camera/uvc_camera_node: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/aswath/ros/devel/lib/uvc_camera/uvc_camera_node: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/aswath/ros/devel/lib/uvc_camera/uvc_camera_node: /opt/ros/indigo/lib/libcamera_info_manager.so
/home/aswath/ros/devel/lib/uvc_camera/uvc_camera_node: /opt/ros/indigo/lib/libimage_transport.so
/home/aswath/ros/devel/lib/uvc_camera/uvc_camera_node: /opt/ros/indigo/lib/libmessage_filters.so
/home/aswath/ros/devel/lib/uvc_camera/uvc_camera_node: /opt/ros/indigo/lib/libnodeletlib.so
/home/aswath/ros/devel/lib/uvc_camera/uvc_camera_node: /opt/ros/indigo/lib/libbondcpp.so
/home/aswath/ros/devel/lib/uvc_camera/uvc_camera_node: /usr/lib/x86_64-linux-gnu/libuuid.so
/home/aswath/ros/devel/lib/uvc_camera/uvc_camera_node: /usr/lib/x86_64-linux-gnu/libtinyxml.so
/home/aswath/ros/devel/lib/uvc_camera/uvc_camera_node: /opt/ros/indigo/lib/libclass_loader.so
/home/aswath/ros/devel/lib/uvc_camera/uvc_camera_node: /usr/lib/libPocoFoundation.so
/home/aswath/ros/devel/lib/uvc_camera/uvc_camera_node: /usr/lib/x86_64-linux-gnu/libdl.so
/home/aswath/ros/devel/lib/uvc_camera/uvc_camera_node: /opt/ros/indigo/lib/libroslib.so
/home/aswath/ros/devel/lib/uvc_camera/uvc_camera_node: /opt/ros/indigo/lib/libroscpp.so
/home/aswath/ros/devel/lib/uvc_camera/uvc_camera_node: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/aswath/ros/devel/lib/uvc_camera/uvc_camera_node: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/aswath/ros/devel/lib/uvc_camera/uvc_camera_node: /opt/ros/indigo/lib/librosconsole.so
/home/aswath/ros/devel/lib/uvc_camera/uvc_camera_node: /opt/ros/indigo/lib/librosconsole_log4cxx.so
/home/aswath/ros/devel/lib/uvc_camera/uvc_camera_node: /opt/ros/indigo/lib/librosconsole_backend_interface.so
/home/aswath/ros/devel/lib/uvc_camera/uvc_camera_node: /usr/lib/liblog4cxx.so
/home/aswath/ros/devel/lib/uvc_camera/uvc_camera_node: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/aswath/ros/devel/lib/uvc_camera/uvc_camera_node: /opt/ros/indigo/lib/libxmlrpcpp.so
/home/aswath/ros/devel/lib/uvc_camera/uvc_camera_node: /opt/ros/indigo/lib/libroscpp_serialization.so
/home/aswath/ros/devel/lib/uvc_camera/uvc_camera_node: /opt/ros/indigo/lib/librostime.so
/home/aswath/ros/devel/lib/uvc_camera/uvc_camera_node: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/aswath/ros/devel/lib/uvc_camera/uvc_camera_node: /opt/ros/indigo/lib/libcpp_common.so
/home/aswath/ros/devel/lib/uvc_camera/uvc_camera_node: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/aswath/ros/devel/lib/uvc_camera/uvc_camera_node: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/aswath/ros/devel/lib/uvc_camera/uvc_camera_node: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/aswath/ros/devel/lib/uvc_camera/uvc_camera_node: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/aswath/ros/devel/lib/uvc_camera/uvc_camera_node: /opt/ros/indigo/lib/libcamera_info_manager.so
/home/aswath/ros/devel/lib/uvc_camera/uvc_camera_node: /opt/ros/indigo/lib/libimage_transport.so
/home/aswath/ros/devel/lib/uvc_camera/uvc_camera_node: /opt/ros/indigo/lib/libmessage_filters.so
/home/aswath/ros/devel/lib/uvc_camera/uvc_camera_node: /opt/ros/indigo/lib/libnodeletlib.so
/home/aswath/ros/devel/lib/uvc_camera/uvc_camera_node: /opt/ros/indigo/lib/libbondcpp.so
/home/aswath/ros/devel/lib/uvc_camera/uvc_camera_node: /usr/lib/x86_64-linux-gnu/libuuid.so
/home/aswath/ros/devel/lib/uvc_camera/uvc_camera_node: /usr/lib/x86_64-linux-gnu/libtinyxml.so
/home/aswath/ros/devel/lib/uvc_camera/uvc_camera_node: /opt/ros/indigo/lib/libclass_loader.so
/home/aswath/ros/devel/lib/uvc_camera/uvc_camera_node: /usr/lib/libPocoFoundation.so
/home/aswath/ros/devel/lib/uvc_camera/uvc_camera_node: /usr/lib/x86_64-linux-gnu/libdl.so
/home/aswath/ros/devel/lib/uvc_camera/uvc_camera_node: /opt/ros/indigo/lib/libroslib.so
/home/aswath/ros/devel/lib/uvc_camera/uvc_camera_node: /opt/ros/indigo/lib/libroscpp.so
/home/aswath/ros/devel/lib/uvc_camera/uvc_camera_node: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/aswath/ros/devel/lib/uvc_camera/uvc_camera_node: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/aswath/ros/devel/lib/uvc_camera/uvc_camera_node: /opt/ros/indigo/lib/librosconsole.so
/home/aswath/ros/devel/lib/uvc_camera/uvc_camera_node: /opt/ros/indigo/lib/librosconsole_log4cxx.so
/home/aswath/ros/devel/lib/uvc_camera/uvc_camera_node: /opt/ros/indigo/lib/librosconsole_backend_interface.so
/home/aswath/ros/devel/lib/uvc_camera/uvc_camera_node: /usr/lib/liblog4cxx.so
/home/aswath/ros/devel/lib/uvc_camera/uvc_camera_node: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/aswath/ros/devel/lib/uvc_camera/uvc_camera_node: /opt/ros/indigo/lib/libxmlrpcpp.so
/home/aswath/ros/devel/lib/uvc_camera/uvc_camera_node: /opt/ros/indigo/lib/libroscpp_serialization.so
/home/aswath/ros/devel/lib/uvc_camera/uvc_camera_node: /opt/ros/indigo/lib/librostime.so
/home/aswath/ros/devel/lib/uvc_camera/uvc_camera_node: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/aswath/ros/devel/lib/uvc_camera/uvc_camera_node: /opt/ros/indigo/lib/libcpp_common.so
/home/aswath/ros/devel/lib/uvc_camera/uvc_camera_node: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/aswath/ros/devel/lib/uvc_camera/uvc_camera_node: uvc_camera/CMakeFiles/uvc_camera_node.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable /home/aswath/ros/devel/lib/uvc_camera/uvc_camera_node"
	cd /home/aswath/ros/build/uvc_camera && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/uvc_camera_node.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
uvc_camera/CMakeFiles/uvc_camera_node.dir/build: /home/aswath/ros/devel/lib/uvc_camera/uvc_camera_node
.PHONY : uvc_camera/CMakeFiles/uvc_camera_node.dir/build

uvc_camera/CMakeFiles/uvc_camera_node.dir/requires: uvc_camera/CMakeFiles/uvc_camera_node.dir/src/camera_node.cpp.o.requires
uvc_camera/CMakeFiles/uvc_camera_node.dir/requires: uvc_camera/CMakeFiles/uvc_camera_node.dir/src/camera.cpp.o.requires
uvc_camera/CMakeFiles/uvc_camera_node.dir/requires: uvc_camera/CMakeFiles/uvc_camera_node.dir/src/uvc_cam.cpp.o.requires
.PHONY : uvc_camera/CMakeFiles/uvc_camera_node.dir/requires

uvc_camera/CMakeFiles/uvc_camera_node.dir/clean:
	cd /home/aswath/ros/build/uvc_camera && $(CMAKE_COMMAND) -P CMakeFiles/uvc_camera_node.dir/cmake_clean.cmake
.PHONY : uvc_camera/CMakeFiles/uvc_camera_node.dir/clean

uvc_camera/CMakeFiles/uvc_camera_node.dir/depend:
	cd /home/aswath/ros/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/aswath/ros/src /home/aswath/ros/src/uvc_camera /home/aswath/ros/build /home/aswath/ros/build/uvc_camera /home/aswath/ros/build/uvc_camera/CMakeFiles/uvc_camera_node.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : uvc_camera/CMakeFiles/uvc_camera_node.dir/depend

