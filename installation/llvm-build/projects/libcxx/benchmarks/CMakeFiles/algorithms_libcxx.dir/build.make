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
include projects/libcxx/benchmarks/CMakeFiles/algorithms_libcxx.dir/depend.make

# Include the progress variables for this target.
include projects/libcxx/benchmarks/CMakeFiles/algorithms_libcxx.dir/progress.make

# Include the compile flags for this target's objects.
include projects/libcxx/benchmarks/CMakeFiles/algorithms_libcxx.dir/flags.make

projects/libcxx/benchmarks/CMakeFiles/algorithms_libcxx.dir/algorithms.bench.cpp.o: projects/libcxx/benchmarks/CMakeFiles/algorithms_libcxx.dir/flags.make
projects/libcxx/benchmarks/CMakeFiles/algorithms_libcxx.dir/algorithms.bench.cpp.o: /home/pablo/Unreal3/AirSim/llvm-source-50/projects/libcxx/benchmarks/algorithms.bench.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pablo/Unreal3/AirSim/llvm-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object projects/libcxx/benchmarks/CMakeFiles/algorithms_libcxx.dir/algorithms.bench.cpp.o"
	cd /home/pablo/Unreal3/AirSim/llvm-build/projects/libcxx/benchmarks && /usr/bin/clang++-5.0  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/algorithms_libcxx.dir/algorithms.bench.cpp.o -c /home/pablo/Unreal3/AirSim/llvm-source-50/projects/libcxx/benchmarks/algorithms.bench.cpp

projects/libcxx/benchmarks/CMakeFiles/algorithms_libcxx.dir/algorithms.bench.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/algorithms_libcxx.dir/algorithms.bench.cpp.i"
	cd /home/pablo/Unreal3/AirSim/llvm-build/projects/libcxx/benchmarks && /usr/bin/clang++-5.0 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pablo/Unreal3/AirSim/llvm-source-50/projects/libcxx/benchmarks/algorithms.bench.cpp > CMakeFiles/algorithms_libcxx.dir/algorithms.bench.cpp.i

projects/libcxx/benchmarks/CMakeFiles/algorithms_libcxx.dir/algorithms.bench.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/algorithms_libcxx.dir/algorithms.bench.cpp.s"
	cd /home/pablo/Unreal3/AirSim/llvm-build/projects/libcxx/benchmarks && /usr/bin/clang++-5.0 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pablo/Unreal3/AirSim/llvm-source-50/projects/libcxx/benchmarks/algorithms.bench.cpp -o CMakeFiles/algorithms_libcxx.dir/algorithms.bench.cpp.s

projects/libcxx/benchmarks/CMakeFiles/algorithms_libcxx.dir/algorithms.bench.cpp.o.requires:

.PHONY : projects/libcxx/benchmarks/CMakeFiles/algorithms_libcxx.dir/algorithms.bench.cpp.o.requires

projects/libcxx/benchmarks/CMakeFiles/algorithms_libcxx.dir/algorithms.bench.cpp.o.provides: projects/libcxx/benchmarks/CMakeFiles/algorithms_libcxx.dir/algorithms.bench.cpp.o.requires
	$(MAKE) -f projects/libcxx/benchmarks/CMakeFiles/algorithms_libcxx.dir/build.make projects/libcxx/benchmarks/CMakeFiles/algorithms_libcxx.dir/algorithms.bench.cpp.o.provides.build
.PHONY : projects/libcxx/benchmarks/CMakeFiles/algorithms_libcxx.dir/algorithms.bench.cpp.o.provides

projects/libcxx/benchmarks/CMakeFiles/algorithms_libcxx.dir/algorithms.bench.cpp.o.provides.build: projects/libcxx/benchmarks/CMakeFiles/algorithms_libcxx.dir/algorithms.bench.cpp.o


# Object files for target algorithms_libcxx
algorithms_libcxx_OBJECTS = \
"CMakeFiles/algorithms_libcxx.dir/algorithms.bench.cpp.o"

# External object files for target algorithms_libcxx
algorithms_libcxx_EXTERNAL_OBJECTS =

projects/libcxx/benchmarks/algorithms.libcxx.out: projects/libcxx/benchmarks/CMakeFiles/algorithms_libcxx.dir/algorithms.bench.cpp.o
projects/libcxx/benchmarks/algorithms.libcxx.out: projects/libcxx/benchmarks/CMakeFiles/algorithms_libcxx.dir/build.make
projects/libcxx/benchmarks/algorithms.libcxx.out: lib/libc++experimental.a
projects/libcxx/benchmarks/algorithms.libcxx.out: lib/libc++.so.1.0
projects/libcxx/benchmarks/algorithms.libcxx.out: lib/libc++abi.so.1.0
projects/libcxx/benchmarks/algorithms.libcxx.out: projects/libcxx/benchmarks/CMakeFiles/algorithms_libcxx.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pablo/Unreal3/AirSim/llvm-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable algorithms.libcxx.out"
	cd /home/pablo/Unreal3/AirSim/llvm-build/projects/libcxx/benchmarks && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/algorithms_libcxx.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
projects/libcxx/benchmarks/CMakeFiles/algorithms_libcxx.dir/build: projects/libcxx/benchmarks/algorithms.libcxx.out

.PHONY : projects/libcxx/benchmarks/CMakeFiles/algorithms_libcxx.dir/build

projects/libcxx/benchmarks/CMakeFiles/algorithms_libcxx.dir/requires: projects/libcxx/benchmarks/CMakeFiles/algorithms_libcxx.dir/algorithms.bench.cpp.o.requires

.PHONY : projects/libcxx/benchmarks/CMakeFiles/algorithms_libcxx.dir/requires

projects/libcxx/benchmarks/CMakeFiles/algorithms_libcxx.dir/clean:
	cd /home/pablo/Unreal3/AirSim/llvm-build/projects/libcxx/benchmarks && $(CMAKE_COMMAND) -P CMakeFiles/algorithms_libcxx.dir/cmake_clean.cmake
.PHONY : projects/libcxx/benchmarks/CMakeFiles/algorithms_libcxx.dir/clean

projects/libcxx/benchmarks/CMakeFiles/algorithms_libcxx.dir/depend:
	cd /home/pablo/Unreal3/AirSim/llvm-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pablo/Unreal3/AirSim/llvm-source-50 /home/pablo/Unreal3/AirSim/llvm-source-50/projects/libcxx/benchmarks /home/pablo/Unreal3/AirSim/llvm-build /home/pablo/Unreal3/AirSim/llvm-build/projects/libcxx/benchmarks /home/pablo/Unreal3/AirSim/llvm-build/projects/libcxx/benchmarks/CMakeFiles/algorithms_libcxx.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : projects/libcxx/benchmarks/CMakeFiles/algorithms_libcxx.dir/depend

