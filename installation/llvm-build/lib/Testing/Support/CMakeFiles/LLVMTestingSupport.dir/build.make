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
include lib/Testing/Support/CMakeFiles/LLVMTestingSupport.dir/depend.make

# Include the progress variables for this target.
include lib/Testing/Support/CMakeFiles/LLVMTestingSupport.dir/progress.make

# Include the compile flags for this target's objects.
include lib/Testing/Support/CMakeFiles/LLVMTestingSupport.dir/flags.make

lib/Testing/Support/CMakeFiles/LLVMTestingSupport.dir/Error.cpp.o: lib/Testing/Support/CMakeFiles/LLVMTestingSupport.dir/flags.make
lib/Testing/Support/CMakeFiles/LLVMTestingSupport.dir/Error.cpp.o: /home/pablo/Unreal3/AirSim/llvm-source-50/lib/Testing/Support/Error.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pablo/Unreal3/AirSim/llvm-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lib/Testing/Support/CMakeFiles/LLVMTestingSupport.dir/Error.cpp.o"
	cd /home/pablo/Unreal3/AirSim/llvm-build/lib/Testing/Support && /usr/bin/clang++-5.0  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LLVMTestingSupport.dir/Error.cpp.o -c /home/pablo/Unreal3/AirSim/llvm-source-50/lib/Testing/Support/Error.cpp

lib/Testing/Support/CMakeFiles/LLVMTestingSupport.dir/Error.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LLVMTestingSupport.dir/Error.cpp.i"
	cd /home/pablo/Unreal3/AirSim/llvm-build/lib/Testing/Support && /usr/bin/clang++-5.0 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pablo/Unreal3/AirSim/llvm-source-50/lib/Testing/Support/Error.cpp > CMakeFiles/LLVMTestingSupport.dir/Error.cpp.i

lib/Testing/Support/CMakeFiles/LLVMTestingSupport.dir/Error.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LLVMTestingSupport.dir/Error.cpp.s"
	cd /home/pablo/Unreal3/AirSim/llvm-build/lib/Testing/Support && /usr/bin/clang++-5.0 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pablo/Unreal3/AirSim/llvm-source-50/lib/Testing/Support/Error.cpp -o CMakeFiles/LLVMTestingSupport.dir/Error.cpp.s

lib/Testing/Support/CMakeFiles/LLVMTestingSupport.dir/Error.cpp.o.requires:

.PHONY : lib/Testing/Support/CMakeFiles/LLVMTestingSupport.dir/Error.cpp.o.requires

lib/Testing/Support/CMakeFiles/LLVMTestingSupport.dir/Error.cpp.o.provides: lib/Testing/Support/CMakeFiles/LLVMTestingSupport.dir/Error.cpp.o.requires
	$(MAKE) -f lib/Testing/Support/CMakeFiles/LLVMTestingSupport.dir/build.make lib/Testing/Support/CMakeFiles/LLVMTestingSupport.dir/Error.cpp.o.provides.build
.PHONY : lib/Testing/Support/CMakeFiles/LLVMTestingSupport.dir/Error.cpp.o.provides

lib/Testing/Support/CMakeFiles/LLVMTestingSupport.dir/Error.cpp.o.provides.build: lib/Testing/Support/CMakeFiles/LLVMTestingSupport.dir/Error.cpp.o


# Object files for target LLVMTestingSupport
LLVMTestingSupport_OBJECTS = \
"CMakeFiles/LLVMTestingSupport.dir/Error.cpp.o"

# External object files for target LLVMTestingSupport
LLVMTestingSupport_EXTERNAL_OBJECTS =

lib/libLLVMTestingSupport.a: lib/Testing/Support/CMakeFiles/LLVMTestingSupport.dir/Error.cpp.o
lib/libLLVMTestingSupport.a: lib/Testing/Support/CMakeFiles/LLVMTestingSupport.dir/build.make
lib/libLLVMTestingSupport.a: lib/Testing/Support/CMakeFiles/LLVMTestingSupport.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pablo/Unreal3/AirSim/llvm-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library ../../libLLVMTestingSupport.a"
	cd /home/pablo/Unreal3/AirSim/llvm-build/lib/Testing/Support && $(CMAKE_COMMAND) -P CMakeFiles/LLVMTestingSupport.dir/cmake_clean_target.cmake
	cd /home/pablo/Unreal3/AirSim/llvm-build/lib/Testing/Support && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/LLVMTestingSupport.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/Testing/Support/CMakeFiles/LLVMTestingSupport.dir/build: lib/libLLVMTestingSupport.a

.PHONY : lib/Testing/Support/CMakeFiles/LLVMTestingSupport.dir/build

lib/Testing/Support/CMakeFiles/LLVMTestingSupport.dir/requires: lib/Testing/Support/CMakeFiles/LLVMTestingSupport.dir/Error.cpp.o.requires

.PHONY : lib/Testing/Support/CMakeFiles/LLVMTestingSupport.dir/requires

lib/Testing/Support/CMakeFiles/LLVMTestingSupport.dir/clean:
	cd /home/pablo/Unreal3/AirSim/llvm-build/lib/Testing/Support && $(CMAKE_COMMAND) -P CMakeFiles/LLVMTestingSupport.dir/cmake_clean.cmake
.PHONY : lib/Testing/Support/CMakeFiles/LLVMTestingSupport.dir/clean

lib/Testing/Support/CMakeFiles/LLVMTestingSupport.dir/depend:
	cd /home/pablo/Unreal3/AirSim/llvm-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pablo/Unreal3/AirSim/llvm-source-50 /home/pablo/Unreal3/AirSim/llvm-source-50/lib/Testing/Support /home/pablo/Unreal3/AirSim/llvm-build /home/pablo/Unreal3/AirSim/llvm-build/lib/Testing/Support /home/pablo/Unreal3/AirSim/llvm-build/lib/Testing/Support/CMakeFiles/LLVMTestingSupport.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/Testing/Support/CMakeFiles/LLVMTestingSupport.dir/depend

