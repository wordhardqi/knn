# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

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
CMAKE_COMMAND = /home/renming/clion-2019.1.3/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/renming/clion-2019.1.3/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/renming/CLionProjects/knn

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/renming/CLionProjects/knn/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/knn.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/knn.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/knn.dir/flags.make

CMakeFiles/knn.dir/main.cpp.o: CMakeFiles/knn.dir/flags.make
CMakeFiles/knn.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/renming/CLionProjects/knn/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/knn.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/knn.dir/main.cpp.o -c /home/renming/CLionProjects/knn/main.cpp

CMakeFiles/knn.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/knn.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/renming/CLionProjects/knn/main.cpp > CMakeFiles/knn.dir/main.cpp.i

CMakeFiles/knn.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/knn.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/renming/CLionProjects/knn/main.cpp -o CMakeFiles/knn.dir/main.cpp.s

CMakeFiles/knn.dir/knn.cpp.o: CMakeFiles/knn.dir/flags.make
CMakeFiles/knn.dir/knn.cpp.o: ../knn.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/renming/CLionProjects/knn/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/knn.dir/knn.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/knn.dir/knn.cpp.o -c /home/renming/CLionProjects/knn/knn.cpp

CMakeFiles/knn.dir/knn.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/knn.dir/knn.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/renming/CLionProjects/knn/knn.cpp > CMakeFiles/knn.dir/knn.cpp.i

CMakeFiles/knn.dir/knn.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/knn.dir/knn.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/renming/CLionProjects/knn/knn.cpp -o CMakeFiles/knn.dir/knn.cpp.s

# Object files for target knn
knn_OBJECTS = \
"CMakeFiles/knn.dir/main.cpp.o" \
"CMakeFiles/knn.dir/knn.cpp.o"

# External object files for target knn
knn_EXTERNAL_OBJECTS =

knn: CMakeFiles/knn.dir/main.cpp.o
knn: CMakeFiles/knn.dir/knn.cpp.o
knn: CMakeFiles/knn.dir/build.make
knn: CMakeFiles/knn.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/renming/CLionProjects/knn/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable knn"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/knn.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/knn.dir/build: knn

.PHONY : CMakeFiles/knn.dir/build

CMakeFiles/knn.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/knn.dir/cmake_clean.cmake
.PHONY : CMakeFiles/knn.dir/clean

CMakeFiles/knn.dir/depend:
	cd /home/renming/CLionProjects/knn/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/renming/CLionProjects/knn /home/renming/CLionProjects/knn /home/renming/CLionProjects/knn/cmake-build-debug /home/renming/CLionProjects/knn/cmake-build-debug /home/renming/CLionProjects/knn/cmake-build-debug/CMakeFiles/knn.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/knn.dir/depend

