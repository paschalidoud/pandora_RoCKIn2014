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

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/paschalidoud/pandora_RoCKIn2014/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/paschalidoud/pandora_RoCKIn2014/build

# Include any dependencies generated for this target.
include object_recognition/CMakeFiles/rec_node.dir/depend.make

# Include the progress variables for this target.
include object_recognition/CMakeFiles/rec_node.dir/progress.make

# Include the compile flags for this target's objects.
include object_recognition/CMakeFiles/rec_node.dir/flags.make

object_recognition/CMakeFiles/rec_node.dir/src/rec/rec_node.cpp.o: object_recognition/CMakeFiles/rec_node.dir/flags.make
object_recognition/CMakeFiles/rec_node.dir/src/rec/rec_node.cpp.o: /home/paschalidoud/pandora_RoCKIn2014/src/object_recognition/src/rec/rec_node.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/paschalidoud/pandora_RoCKIn2014/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object object_recognition/CMakeFiles/rec_node.dir/src/rec/rec_node.cpp.o"
	cd /home/paschalidoud/pandora_RoCKIn2014/build/object_recognition && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/rec_node.dir/src/rec/rec_node.cpp.o -c /home/paschalidoud/pandora_RoCKIn2014/src/object_recognition/src/rec/rec_node.cpp

object_recognition/CMakeFiles/rec_node.dir/src/rec/rec_node.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rec_node.dir/src/rec/rec_node.cpp.i"
	cd /home/paschalidoud/pandora_RoCKIn2014/build/object_recognition && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/paschalidoud/pandora_RoCKIn2014/src/object_recognition/src/rec/rec_node.cpp > CMakeFiles/rec_node.dir/src/rec/rec_node.cpp.i

object_recognition/CMakeFiles/rec_node.dir/src/rec/rec_node.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rec_node.dir/src/rec/rec_node.cpp.s"
	cd /home/paschalidoud/pandora_RoCKIn2014/build/object_recognition && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/paschalidoud/pandora_RoCKIn2014/src/object_recognition/src/rec/rec_node.cpp -o CMakeFiles/rec_node.dir/src/rec/rec_node.cpp.s

object_recognition/CMakeFiles/rec_node.dir/src/rec/rec_node.cpp.o.requires:
.PHONY : object_recognition/CMakeFiles/rec_node.dir/src/rec/rec_node.cpp.o.requires

object_recognition/CMakeFiles/rec_node.dir/src/rec/rec_node.cpp.o.provides: object_recognition/CMakeFiles/rec_node.dir/src/rec/rec_node.cpp.o.requires
	$(MAKE) -f object_recognition/CMakeFiles/rec_node.dir/build.make object_recognition/CMakeFiles/rec_node.dir/src/rec/rec_node.cpp.o.provides.build
.PHONY : object_recognition/CMakeFiles/rec_node.dir/src/rec/rec_node.cpp.o.provides

object_recognition/CMakeFiles/rec_node.dir/src/rec/rec_node.cpp.o.provides.build: object_recognition/CMakeFiles/rec_node.dir/src/rec/rec_node.cpp.o

object_recognition/CMakeFiles/rec_node.dir/src/rec/recognizer.cpp.o: object_recognition/CMakeFiles/rec_node.dir/flags.make
object_recognition/CMakeFiles/rec_node.dir/src/rec/recognizer.cpp.o: /home/paschalidoud/pandora_RoCKIn2014/src/object_recognition/src/rec/recognizer.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/paschalidoud/pandora_RoCKIn2014/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object object_recognition/CMakeFiles/rec_node.dir/src/rec/recognizer.cpp.o"
	cd /home/paschalidoud/pandora_RoCKIn2014/build/object_recognition && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/rec_node.dir/src/rec/recognizer.cpp.o -c /home/paschalidoud/pandora_RoCKIn2014/src/object_recognition/src/rec/recognizer.cpp

object_recognition/CMakeFiles/rec_node.dir/src/rec/recognizer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rec_node.dir/src/rec/recognizer.cpp.i"
	cd /home/paschalidoud/pandora_RoCKIn2014/build/object_recognition && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/paschalidoud/pandora_RoCKIn2014/src/object_recognition/src/rec/recognizer.cpp > CMakeFiles/rec_node.dir/src/rec/recognizer.cpp.i

object_recognition/CMakeFiles/rec_node.dir/src/rec/recognizer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rec_node.dir/src/rec/recognizer.cpp.s"
	cd /home/paschalidoud/pandora_RoCKIn2014/build/object_recognition && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/paschalidoud/pandora_RoCKIn2014/src/object_recognition/src/rec/recognizer.cpp -o CMakeFiles/rec_node.dir/src/rec/recognizer.cpp.s

object_recognition/CMakeFiles/rec_node.dir/src/rec/recognizer.cpp.o.requires:
.PHONY : object_recognition/CMakeFiles/rec_node.dir/src/rec/recognizer.cpp.o.requires

object_recognition/CMakeFiles/rec_node.dir/src/rec/recognizer.cpp.o.provides: object_recognition/CMakeFiles/rec_node.dir/src/rec/recognizer.cpp.o.requires
	$(MAKE) -f object_recognition/CMakeFiles/rec_node.dir/build.make object_recognition/CMakeFiles/rec_node.dir/src/rec/recognizer.cpp.o.provides.build
.PHONY : object_recognition/CMakeFiles/rec_node.dir/src/rec/recognizer.cpp.o.provides

object_recognition/CMakeFiles/rec_node.dir/src/rec/recognizer.cpp.o.provides.build: object_recognition/CMakeFiles/rec_node.dir/src/rec/recognizer.cpp.o

# Object files for target rec_node
rec_node_OBJECTS = \
"CMakeFiles/rec_node.dir/src/rec/rec_node.cpp.o" \
"CMakeFiles/rec_node.dir/src/rec/recognizer.cpp.o"

# External object files for target rec_node
rec_node_EXTERNAL_OBJECTS =

/home/paschalidoud/pandora_RoCKIn2014/devel/lib/object_recognition/rec_node: object_recognition/CMakeFiles/rec_node.dir/src/rec/rec_node.cpp.o
/home/paschalidoud/pandora_RoCKIn2014/devel/lib/object_recognition/rec_node: object_recognition/CMakeFiles/rec_node.dir/src/rec/recognizer.cpp.o
/home/paschalidoud/pandora_RoCKIn2014/devel/lib/object_recognition/rec_node: /opt/ros/hydro/lib/libroscpp.so
/home/paschalidoud/pandora_RoCKIn2014/devel/lib/object_recognition/rec_node: /usr/lib/libboost_signals-mt.so
/home/paschalidoud/pandora_RoCKIn2014/devel/lib/object_recognition/rec_node: /usr/lib/libboost_filesystem-mt.so
/home/paschalidoud/pandora_RoCKIn2014/devel/lib/object_recognition/rec_node: /opt/ros/hydro/lib/libxmlrpcpp.so
/home/paschalidoud/pandora_RoCKIn2014/devel/lib/object_recognition/rec_node: /opt/ros/hydro/lib/libcv_bridge.so
/home/paschalidoud/pandora_RoCKIn2014/devel/lib/object_recognition/rec_node: /opt/ros/hydro/lib/libopencv_calib3d.so
/home/paschalidoud/pandora_RoCKIn2014/devel/lib/object_recognition/rec_node: /opt/ros/hydro/lib/libopencv_contrib.so
/home/paschalidoud/pandora_RoCKIn2014/devel/lib/object_recognition/rec_node: /opt/ros/hydro/lib/libopencv_core.so
/home/paschalidoud/pandora_RoCKIn2014/devel/lib/object_recognition/rec_node: /opt/ros/hydro/lib/libopencv_features2d.so
/home/paschalidoud/pandora_RoCKIn2014/devel/lib/object_recognition/rec_node: /opt/ros/hydro/lib/libopencv_flann.so
/home/paschalidoud/pandora_RoCKIn2014/devel/lib/object_recognition/rec_node: /opt/ros/hydro/lib/libopencv_gpu.so
/home/paschalidoud/pandora_RoCKIn2014/devel/lib/object_recognition/rec_node: /opt/ros/hydro/lib/libopencv_highgui.so
/home/paschalidoud/pandora_RoCKIn2014/devel/lib/object_recognition/rec_node: /opt/ros/hydro/lib/libopencv_imgproc.so
/home/paschalidoud/pandora_RoCKIn2014/devel/lib/object_recognition/rec_node: /opt/ros/hydro/lib/libopencv_legacy.so
/home/paschalidoud/pandora_RoCKIn2014/devel/lib/object_recognition/rec_node: /opt/ros/hydro/lib/libopencv_ml.so
/home/paschalidoud/pandora_RoCKIn2014/devel/lib/object_recognition/rec_node: /opt/ros/hydro/lib/libopencv_nonfree.so
/home/paschalidoud/pandora_RoCKIn2014/devel/lib/object_recognition/rec_node: /opt/ros/hydro/lib/libopencv_objdetect.so
/home/paschalidoud/pandora_RoCKIn2014/devel/lib/object_recognition/rec_node: /opt/ros/hydro/lib/libopencv_photo.so
/home/paschalidoud/pandora_RoCKIn2014/devel/lib/object_recognition/rec_node: /opt/ros/hydro/lib/libopencv_stitching.so
/home/paschalidoud/pandora_RoCKIn2014/devel/lib/object_recognition/rec_node: /opt/ros/hydro/lib/libopencv_superres.so
/home/paschalidoud/pandora_RoCKIn2014/devel/lib/object_recognition/rec_node: /opt/ros/hydro/lib/libopencv_video.so
/home/paschalidoud/pandora_RoCKIn2014/devel/lib/object_recognition/rec_node: /opt/ros/hydro/lib/libopencv_videostab.so
/home/paschalidoud/pandora_RoCKIn2014/devel/lib/object_recognition/rec_node: /opt/ros/hydro/lib/librosconsole.so
/home/paschalidoud/pandora_RoCKIn2014/devel/lib/object_recognition/rec_node: /opt/ros/hydro/lib/librosconsole_log4cxx.so
/home/paschalidoud/pandora_RoCKIn2014/devel/lib/object_recognition/rec_node: /opt/ros/hydro/lib/librosconsole_backend_interface.so
/home/paschalidoud/pandora_RoCKIn2014/devel/lib/object_recognition/rec_node: /usr/lib/liblog4cxx.so
/home/paschalidoud/pandora_RoCKIn2014/devel/lib/object_recognition/rec_node: /usr/lib/libboost_regex-mt.so
/home/paschalidoud/pandora_RoCKIn2014/devel/lib/object_recognition/rec_node: /opt/ros/hydro/lib/libroscpp_serialization.so
/home/paschalidoud/pandora_RoCKIn2014/devel/lib/object_recognition/rec_node: /opt/ros/hydro/lib/librostime.so
/home/paschalidoud/pandora_RoCKIn2014/devel/lib/object_recognition/rec_node: /usr/lib/libboost_date_time-mt.so
/home/paschalidoud/pandora_RoCKIn2014/devel/lib/object_recognition/rec_node: /usr/lib/libboost_system-mt.so
/home/paschalidoud/pandora_RoCKIn2014/devel/lib/object_recognition/rec_node: /usr/lib/libboost_thread-mt.so
/home/paschalidoud/pandora_RoCKIn2014/devel/lib/object_recognition/rec_node: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/paschalidoud/pandora_RoCKIn2014/devel/lib/object_recognition/rec_node: /opt/ros/hydro/lib/libcpp_common.so
/home/paschalidoud/pandora_RoCKIn2014/devel/lib/object_recognition/rec_node: /opt/ros/hydro/lib/libconsole_bridge.so
/home/paschalidoud/pandora_RoCKIn2014/devel/lib/object_recognition/rec_node: /usr/lib/x86_64-linux-gnu/libQtOpenGL.so
/home/paschalidoud/pandora_RoCKIn2014/devel/lib/object_recognition/rec_node: /usr/lib/x86_64-linux-gnu/libQtGui.so
/home/paschalidoud/pandora_RoCKIn2014/devel/lib/object_recognition/rec_node: /usr/lib/x86_64-linux-gnu/libQtCore.so
/home/paschalidoud/pandora_RoCKIn2014/devel/lib/object_recognition/rec_node: object_recognition/CMakeFiles/rec_node.dir/build.make
/home/paschalidoud/pandora_RoCKIn2014/devel/lib/object_recognition/rec_node: object_recognition/CMakeFiles/rec_node.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable /home/paschalidoud/pandora_RoCKIn2014/devel/lib/object_recognition/rec_node"
	cd /home/paschalidoud/pandora_RoCKIn2014/build/object_recognition && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/rec_node.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
object_recognition/CMakeFiles/rec_node.dir/build: /home/paschalidoud/pandora_RoCKIn2014/devel/lib/object_recognition/rec_node
.PHONY : object_recognition/CMakeFiles/rec_node.dir/build

object_recognition/CMakeFiles/rec_node.dir/requires: object_recognition/CMakeFiles/rec_node.dir/src/rec/rec_node.cpp.o.requires
object_recognition/CMakeFiles/rec_node.dir/requires: object_recognition/CMakeFiles/rec_node.dir/src/rec/recognizer.cpp.o.requires
.PHONY : object_recognition/CMakeFiles/rec_node.dir/requires

object_recognition/CMakeFiles/rec_node.dir/clean:
	cd /home/paschalidoud/pandora_RoCKIn2014/build/object_recognition && $(CMAKE_COMMAND) -P CMakeFiles/rec_node.dir/cmake_clean.cmake
.PHONY : object_recognition/CMakeFiles/rec_node.dir/clean

object_recognition/CMakeFiles/rec_node.dir/depend:
	cd /home/paschalidoud/pandora_RoCKIn2014/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/paschalidoud/pandora_RoCKIn2014/src /home/paschalidoud/pandora_RoCKIn2014/src/object_recognition /home/paschalidoud/pandora_RoCKIn2014/build /home/paschalidoud/pandora_RoCKIn2014/build/object_recognition /home/paschalidoud/pandora_RoCKIn2014/build/object_recognition/CMakeFiles/rec_node.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : object_recognition/CMakeFiles/rec_node.dir/depend

