# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/pablo/Unreal3/AirSim/llvm-source-50

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pablo/Unreal3/AirSim/llvm-build

# Include any dependencies generated for this target.
include tools/llvm-mt/CMakeFiles/llvm-mt.dir/depend.make

# Include the progress variables for this target.
include tools/llvm-mt/CMakeFiles/llvm-mt.dir/progress.make

# Include the compile flags for this target's objects.
include tools/llvm-mt/CMakeFiles/llvm-mt.dir/flags.make

tools/llvm-mt/CMakeFiles/llvm-mt.dir/llvm-mt.cpp.o: tools/llvm-mt/CMakeFiles/llvm-mt.dir/flags.make
tools/llvm-mt/CMakeFiles/llvm-mt.dir/llvm-mt.cpp.o: /home/pablo/Unreal3/AirSim/llvm-source-50/tools/llvm-mt/llvm-mt.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pablo/Unreal3/AirSim/llvm-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tools/llvm-mt/CMakeFiles/llvm-mt.dir/llvm-mt.cpp.o"
	cd /home/pablo/Unreal3/AirSim/llvm-build/tools/llvm-mt && /usr/bin/clang++-5.0  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/llvm-mt.dir/llvm-mt.cpp.o -c /home/pablo/Unreal3/AirSim/llvm-source-50/tools/llvm-mt/llvm-mt.cpp

tools/llvm-mt/CMakeFiles/llvm-mt.dir/llvm-mt.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/llvm-mt.dir/llvm-mt.cpp.i"
	cd /home/pablo/Unreal3/AirSim/llvm-build/tools/llvm-mt && /usr/bin/clang++-5.0 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pablo/Unreal3/AirSim/llvm-source-50/tools/llvm-mt/llvm-mt.cpp > CMakeFiles/llvm-mt.dir/llvm-mt.cpp.i

tools/llvm-mt/CMakeFiles/llvm-mt.dir/llvm-mt.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/llvm-mt.dir/llvm-mt.cpp.s"
	cd /home/pablo/Unreal3/AirSim/llvm-build/tools/llvm-mt && /usr/bin/clang++-5.0 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pablo/Unreal3/AirSim/llvm-source-50/tools/llvm-mt/llvm-mt.cpp -o CMakeFiles/llvm-mt.dir/llvm-mt.cpp.s

tools/llvm-mt/CMakeFiles/llvm-mt.dir/llvm-mt.cpp.o.requires:

.PHONY : tools/llvm-mt/CMakeFiles/llvm-mt.dir/llvm-mt.cpp.o.requires

tools/llvm-mt/CMakeFiles/llvm-mt.dir/llvm-mt.cpp.o.provides: tools/llvm-mt/CMakeFiles/llvm-mt.dir/llvm-mt.cpp.o.requires
	$(MAKE) -f tools/llvm-mt/CMakeFiles/llvm-mt.dir/build.make tools/llvm-mt/CMakeFiles/llvm-mt.dir/llvm-mt.cpp.o.provides.build
.PHONY : tools/llvm-mt/CMakeFiles/llvm-mt.dir/llvm-mt.cpp.o.provides

tools/llvm-mt/CMakeFiles/llvm-mt.dir/llvm-mt.cpp.o.provides.build: tools/llvm-mt/CMakeFiles/llvm-mt.dir/llvm-mt.cpp.o


# Object files for target llvm-mt
llvm__mt_OBJECTS = \
"CMakeFiles/llvm-mt.dir/llvm-mt.cpp.o"

# External object files for target llvm-mt
llvm__mt_EXTERNAL_OBJECTS =

bin/llvm-mt: tools/llvm-mt/CMakeFiles/llvm-mt.dir/llvm-mt.cpp.o
bin/llvm-mt: tools/llvm-mt/CMakeFiles/llvm-mt.dir/build.make
bin/llvm-mt: lib/libLLVMOption.a
bin/llvm-mt: lib/libLLVMSupport.a
bin/llvm-mt: lib/libLLVMDemangle.a
bin/llvm-mt: tools/llvm-mt/CMakeFiles/llvm-mt.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pablo/Unreal3/AirSim/llvm-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/llvm-mt"
	cd /home/pablo/Unreal3/AirSim/llvm-build/tools/llvm-mt && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/llvm-mt.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tools/llvm-mt/CMakeFiles/llvm-mt.dir/build: bin/llvm-mt

.PHONY : tools/llvm-mt/CMakeFiles/llvm-mt.dir/build

tools/llvm-mt/CMakeFiles/llvm-mt.dir/requires: tools/llvm-mt/CMakeFiles/llvm-mt.dir/llvm-mt.cpp.o.requires

.PHONY : tools/llvm-mt/CMakeFiles/llvm-mt.dir/requires

tools/llvm-mt/CMakeFiles/llvm-mt.dir/clean:
	cd /home/pablo/Unreal3/AirSim/llvm-build/tools/llvm-mt && $(CMAKE_COMMAND) -P CMakeFiles/llvm-mt.dir/cmake_clean.cmake
.PHONY : tools/llvm-mt/CMakeFiles/llvm-mt.dir/clean

tools/llvm-mt/CMakeFiles/llvm-mt.dir/depend:
	cd /home/pablo/Unreal3/AirSim/llvm-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pablo/Unreal3/AirSim/llvm-source-50 /home/pablo/Unreal3/AirSim/llvm-source-50/tools/llvm-mt /home/pablo/Unreal3/AirSim/llvm-build /home/pablo/Unreal3/AirSim/llvm-build/tools/llvm-mt /home/pablo/Unreal3/AirSim/llvm-build/tools/llvm-mt/CMakeFiles/llvm-mt.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tools/llvm-mt/CMakeFiles/llvm-mt.dir/depend

