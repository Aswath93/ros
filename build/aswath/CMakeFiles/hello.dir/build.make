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
include aswath/CMakeFiles/hello.dir/depend.make

# Include the progress variables for this target.
include aswath/CMakeFiles/hello.dir/progress.make

# Include the compile flags for this target's objects.
include aswath/CMakeFiles/hello.dir/flags.make

aswath/CMakeFiles/hello.dir/hello.cpp.o: aswath/CMakeFiles/hello.dir/flags.make
aswath/CMakeFiles/hello.dir/hello.cpp.o: /home/aswath/ros/src/aswath/hello.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/aswath/ros/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object aswath/CMakeFiles/hello.dir/hello.cpp.o"
	cd /home/aswath/ros/build/aswath && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/hello.dir/hello.cpp.o -c /home/aswath/ros/src/aswath/hello.cpp

aswath/CMakeFiles/hello.dir/hello.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hello.dir/hello.cpp.i"
	cd /home/aswath/ros/build/aswath && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/aswath/ros/src/aswath/hello.cpp > CMakeFiles/hello.dir/hello.cpp.i

aswath/CMakeFiles/hello.dir/hello.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hello.dir/hello.cpp.s"
	cd /home/aswath/ros/build/aswath && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/aswath/ros/src/aswath/hello.cpp -o CMakeFiles/hello.dir/hello.cpp.s

aswath/CMakeFiles/hello.dir/hello.cpp.o.requires:
.PHONY : aswath/CMakeFiles/hello.dir/hello.cpp.o.requires

aswath/CMakeFiles/hello.dir/hello.cpp.o.provides: aswath/CMakeFiles/hello.dir/hello.cpp.o.requires
	$(MAKE) -f aswath/CMakeFiles/hello.dir/build.make aswath/CMakeFiles/hello.dir/hello.cpp.o.provides.build
.PHONY : aswath/CMakeFiles/hello.dir/hello.cpp.o.provides

aswath/CMakeFiles/hello.dir/hello.cpp.o.provides.build: aswath/CMakeFiles/hello.dir/hello.cpp.o

# Object files for target hello
hello_OBJECTS = \
"CMakeFiles/hello.dir/hello.cpp.o"

# External object files for target hello
hello_EXTERNAL_OBJECTS =

aswath/hello: aswath/CMakeFiles/hello.dir/hello.cpp.o
aswath/hello: aswath/CMakeFiles/hello.dir/build.make
aswath/hello: /opt/ros/indigo/lib/libroscpp.so
aswath/hello: /usr/lib/x86_64-linux-gnu/libboost_signals.so
aswath/hello: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
aswath/hello: /opt/ros/indigo/lib/librosconsole.so
aswath/hello: /opt/ros/indigo/lib/librosconsole_log4cxx.so
aswath/hello: /opt/ros/indigo/lib/librosconsole_backend_interface.so
aswath/hello: /usr/lib/liblog4cxx.so
aswath/hello: /usr/lib/x86_64-linux-gnu/libboost_regex.so
aswath/hello: /opt/ros/indigo/lib/libroscpp_serialization.so
aswath/hello: /opt/ros/indigo/lib/librostime.so
aswath/hello: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
aswath/hello: /opt/ros/indigo/lib/libxmlrpcpp.so
aswath/hello: /opt/ros/indigo/lib/libcpp_common.so
aswath/hello: /usr/lib/x86_64-linux-gnu/libboost_system.so
aswath/hello: /usr/lib/x86_64-linux-gnu/libboost_thread.so
aswath/hello: /usr/lib/x86_64-linux-gnu/libpthread.so
aswath/hello: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
aswath/hello: aswath/CMakeFiles/hello.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable hello"
	cd /home/aswath/ros/build/aswath && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hello.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
aswath/CMakeFiles/hello.dir/build: aswath/hello
.PHONY : aswath/CMakeFiles/hello.dir/build

aswath/CMakeFiles/hello.dir/requires: aswath/CMakeFiles/hello.dir/hello.cpp.o.requires
.PHONY : aswath/CMakeFiles/hello.dir/requires

aswath/CMakeFiles/hello.dir/clean:
	cd /home/aswath/ros/build/aswath && $(CMAKE_COMMAND) -P CMakeFiles/hello.dir/cmake_clean.cmake
.PHONY : aswath/CMakeFiles/hello.dir/clean

aswath/CMakeFiles/hello.dir/depend:
	cd /home/aswath/ros/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/aswath/ros/src /home/aswath/ros/src/aswath /home/aswath/ros/build /home/aswath/ros/build/aswath /home/aswath/ros/build/aswath/CMakeFiles/hello.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : aswath/CMakeFiles/hello.dir/depend

