# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ubuntu/workspace/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ubuntu/workspace/build

# Include any dependencies generated for this target.
include tp_ros/CMakeFiles/tp_ros_point_and_shoot.dir/depend.make

# Include the progress variables for this target.
include tp_ros/CMakeFiles/tp_ros_point_and_shoot.dir/progress.make

# Include the compile flags for this target's objects.
include tp_ros/CMakeFiles/tp_ros_point_and_shoot.dir/flags.make

tp_ros/CMakeFiles/tp_ros_point_and_shoot.dir/src/point_and_shoot.cpp.o: tp_ros/CMakeFiles/tp_ros_point_and_shoot.dir/flags.make
tp_ros/CMakeFiles/tp_ros_point_and_shoot.dir/src/point_and_shoot.cpp.o: /home/ubuntu/workspace/src/tp_ros/src/point_and_shoot.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/workspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tp_ros/CMakeFiles/tp_ros_point_and_shoot.dir/src/point_and_shoot.cpp.o"
	cd /home/ubuntu/workspace/build/tp_ros && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tp_ros_point_and_shoot.dir/src/point_and_shoot.cpp.o -c /home/ubuntu/workspace/src/tp_ros/src/point_and_shoot.cpp

tp_ros/CMakeFiles/tp_ros_point_and_shoot.dir/src/point_and_shoot.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tp_ros_point_and_shoot.dir/src/point_and_shoot.cpp.i"
	cd /home/ubuntu/workspace/build/tp_ros && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu/workspace/src/tp_ros/src/point_and_shoot.cpp > CMakeFiles/tp_ros_point_and_shoot.dir/src/point_and_shoot.cpp.i

tp_ros/CMakeFiles/tp_ros_point_and_shoot.dir/src/point_and_shoot.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tp_ros_point_and_shoot.dir/src/point_and_shoot.cpp.s"
	cd /home/ubuntu/workspace/build/tp_ros && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu/workspace/src/tp_ros/src/point_and_shoot.cpp -o CMakeFiles/tp_ros_point_and_shoot.dir/src/point_and_shoot.cpp.s

# Object files for target tp_ros_point_and_shoot
tp_ros_point_and_shoot_OBJECTS = \
"CMakeFiles/tp_ros_point_and_shoot.dir/src/point_and_shoot.cpp.o"

# External object files for target tp_ros_point_and_shoot
tp_ros_point_and_shoot_EXTERNAL_OBJECTS =

/home/ubuntu/workspace/devel/lib/tp_ros/tp_ros_point_and_shoot: tp_ros/CMakeFiles/tp_ros_point_and_shoot.dir/src/point_and_shoot.cpp.o
/home/ubuntu/workspace/devel/lib/tp_ros/tp_ros_point_and_shoot: tp_ros/CMakeFiles/tp_ros_point_and_shoot.dir/build.make
/home/ubuntu/workspace/devel/lib/tp_ros/tp_ros_point_and_shoot: /opt/ros/noetic/lib/libroscpp.so
/home/ubuntu/workspace/devel/lib/tp_ros/tp_ros_point_and_shoot: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/ubuntu/workspace/devel/lib/tp_ros/tp_ros_point_and_shoot: /usr/lib/x86_64-linux-gnu/libboost_chrono.so.1.71.0
/home/ubuntu/workspace/devel/lib/tp_ros/tp_ros_point_and_shoot: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.71.0
/home/ubuntu/workspace/devel/lib/tp_ros/tp_ros_point_and_shoot: /opt/ros/noetic/lib/librosconsole.so
/home/ubuntu/workspace/devel/lib/tp_ros/tp_ros_point_and_shoot: /opt/ros/noetic/lib/librosconsole_log4cxx.so
/home/ubuntu/workspace/devel/lib/tp_ros/tp_ros_point_and_shoot: /opt/ros/noetic/lib/librosconsole_backend_interface.so
/home/ubuntu/workspace/devel/lib/tp_ros/tp_ros_point_and_shoot: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/ubuntu/workspace/devel/lib/tp_ros/tp_ros_point_and_shoot: /usr/lib/x86_64-linux-gnu/libboost_regex.so.1.71.0
/home/ubuntu/workspace/devel/lib/tp_ros/tp_ros_point_and_shoot: /opt/ros/noetic/lib/libxmlrpcpp.so
/home/ubuntu/workspace/devel/lib/tp_ros/tp_ros_point_and_shoot: /opt/ros/noetic/lib/libroscpp_serialization.so
/home/ubuntu/workspace/devel/lib/tp_ros/tp_ros_point_and_shoot: /opt/ros/noetic/lib/librostime.so
/home/ubuntu/workspace/devel/lib/tp_ros/tp_ros_point_and_shoot: /usr/lib/x86_64-linux-gnu/libboost_date_time.so.1.71.0
/home/ubuntu/workspace/devel/lib/tp_ros/tp_ros_point_and_shoot: /opt/ros/noetic/lib/libcpp_common.so
/home/ubuntu/workspace/devel/lib/tp_ros/tp_ros_point_and_shoot: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0
/home/ubuntu/workspace/devel/lib/tp_ros/tp_ros_point_and_shoot: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0
/home/ubuntu/workspace/devel/lib/tp_ros/tp_ros_point_and_shoot: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/home/ubuntu/workspace/devel/lib/tp_ros/tp_ros_point_and_shoot: tp_ros/CMakeFiles/tp_ros_point_and_shoot.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ubuntu/workspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/ubuntu/workspace/devel/lib/tp_ros/tp_ros_point_and_shoot"
	cd /home/ubuntu/workspace/build/tp_ros && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tp_ros_point_and_shoot.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tp_ros/CMakeFiles/tp_ros_point_and_shoot.dir/build: /home/ubuntu/workspace/devel/lib/tp_ros/tp_ros_point_and_shoot

.PHONY : tp_ros/CMakeFiles/tp_ros_point_and_shoot.dir/build

tp_ros/CMakeFiles/tp_ros_point_and_shoot.dir/clean:
	cd /home/ubuntu/workspace/build/tp_ros && $(CMAKE_COMMAND) -P CMakeFiles/tp_ros_point_and_shoot.dir/cmake_clean.cmake
.PHONY : tp_ros/CMakeFiles/tp_ros_point_and_shoot.dir/clean

tp_ros/CMakeFiles/tp_ros_point_and_shoot.dir/depend:
	cd /home/ubuntu/workspace/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/workspace/src /home/ubuntu/workspace/src/tp_ros /home/ubuntu/workspace/build /home/ubuntu/workspace/build/tp_ros /home/ubuntu/workspace/build/tp_ros/CMakeFiles/tp_ros_point_and_shoot.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tp_ros/CMakeFiles/tp_ros_point_and_shoot.dir/depend

