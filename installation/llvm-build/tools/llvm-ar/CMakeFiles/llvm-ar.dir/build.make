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
include tools/llvm-ar/CMakeFiles/llvm-ar.dir/depend.make

# Include the progress variables for this target.
include tools/llvm-ar/CMakeFiles/llvm-ar.dir/progress.make

# Include the compile flags for this target's objects.
include tools/llvm-ar/CMakeFiles/llvm-ar.dir/flags.make

tools/llvm-ar/CMakeFiles/llvm-ar.dir/llvm-ar.cpp.o: tools/llvm-ar/CMakeFiles/llvm-ar.dir/flags.make
tools/llvm-ar/CMakeFiles/llvm-ar.dir/llvm-ar.cpp.o: /home/pablo/Unreal3/AirSim/llvm-source-50/tools/llvm-ar/llvm-ar.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pablo/Unreal3/AirSim/llvm-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tools/llvm-ar/CMakeFiles/llvm-ar.dir/llvm-ar.cpp.o"
	cd /home/pablo/Unreal3/AirSim/llvm-build/tools/llvm-ar && /usr/bin/clang++-5.0  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/llvm-ar.dir/llvm-ar.cpp.o -c /home/pablo/Unreal3/AirSim/llvm-source-50/tools/llvm-ar/llvm-ar.cpp

tools/llvm-ar/CMakeFiles/llvm-ar.dir/llvm-ar.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/llvm-ar.dir/llvm-ar.cpp.i"
	cd /home/pablo/Unreal3/AirSim/llvm-build/tools/llvm-ar && /usr/bin/clang++-5.0 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pablo/Unreal3/AirSim/llvm-source-50/tools/llvm-ar/llvm-ar.cpp > CMakeFiles/llvm-ar.dir/llvm-ar.cpp.i

tools/llvm-ar/CMakeFiles/llvm-ar.dir/llvm-ar.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/llvm-ar.dir/llvm-ar.cpp.s"
	cd /home/pablo/Unreal3/AirSim/llvm-build/tools/llvm-ar && /usr/bin/clang++-5.0 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pablo/Unreal3/AirSim/llvm-source-50/tools/llvm-ar/llvm-ar.cpp -o CMakeFiles/llvm-ar.dir/llvm-ar.cpp.s

tools/llvm-ar/CMakeFiles/llvm-ar.dir/llvm-ar.cpp.o.requires:

.PHONY : tools/llvm-ar/CMakeFiles/llvm-ar.dir/llvm-ar.cpp.o.requires

tools/llvm-ar/CMakeFiles/llvm-ar.dir/llvm-ar.cpp.o.provides: tools/llvm-ar/CMakeFiles/llvm-ar.dir/llvm-ar.cpp.o.requires
	$(MAKE) -f tools/llvm-ar/CMakeFiles/llvm-ar.dir/build.make tools/llvm-ar/CMakeFiles/llvm-ar.dir/llvm-ar.cpp.o.provides.build
.PHONY : tools/llvm-ar/CMakeFiles/llvm-ar.dir/llvm-ar.cpp.o.provides

tools/llvm-ar/CMakeFiles/llvm-ar.dir/llvm-ar.cpp.o.provides.build: tools/llvm-ar/CMakeFiles/llvm-ar.dir/llvm-ar.cpp.o


# Object files for target llvm-ar
llvm__ar_OBJECTS = \
"CMakeFiles/llvm-ar.dir/llvm-ar.cpp.o"

# External object files for target llvm-ar
llvm__ar_EXTERNAL_OBJECTS =

bin/llvm-ar: tools/llvm-ar/CMakeFiles/llvm-ar.dir/llvm-ar.cpp.o
bin/llvm-ar: tools/llvm-ar/CMakeFiles/llvm-ar.dir/build.make
bin/llvm-ar: lib/libLLVMAArch64CodeGen.a
bin/llvm-ar: lib/libLLVMAArch64AsmPrinter.a
bin/llvm-ar: lib/libLLVMAArch64AsmParser.a
bin/llvm-ar: lib/libLLVMAArch64Desc.a
bin/llvm-ar: lib/libLLVMAArch64Info.a
bin/llvm-ar: lib/libLLVMAArch64Disassembler.a
bin/llvm-ar: lib/libLLVMAArch64Info.a
bin/llvm-ar: lib/libLLVMAArch64Utils.a
bin/llvm-ar: lib/libLLVMAMDGPUCodeGen.a
bin/llvm-ar: lib/libLLVMAMDGPUAsmPrinter.a
bin/llvm-ar: lib/libLLVMAMDGPUAsmParser.a
bin/llvm-ar: lib/libLLVMAMDGPUDesc.a
bin/llvm-ar: lib/libLLVMAMDGPUInfo.a
bin/llvm-ar: lib/libLLVMAMDGPUDisassembler.a
bin/llvm-ar: lib/libLLVMAMDGPUInfo.a
bin/llvm-ar: lib/libLLVMAMDGPUUtils.a
bin/llvm-ar: lib/libLLVMARMCodeGen.a
bin/llvm-ar: lib/libLLVMARMAsmPrinter.a
bin/llvm-ar: lib/libLLVMARMAsmParser.a
bin/llvm-ar: lib/libLLVMARMDesc.a
bin/llvm-ar: lib/libLLVMARMInfo.a
bin/llvm-ar: lib/libLLVMARMDisassembler.a
bin/llvm-ar: lib/libLLVMARMInfo.a
bin/llvm-ar: lib/libLLVMBPFCodeGen.a
bin/llvm-ar: lib/libLLVMBPFAsmPrinter.a
bin/llvm-ar: lib/libLLVMBPFDesc.a
bin/llvm-ar: lib/libLLVMBPFInfo.a
bin/llvm-ar: lib/libLLVMBPFDisassembler.a
bin/llvm-ar: lib/libLLVMBPFInfo.a
bin/llvm-ar: lib/libLLVMHexagonCodeGen.a
bin/llvm-ar: lib/libLLVMHexagonAsmParser.a
bin/llvm-ar: lib/libLLVMHexagonDesc.a
bin/llvm-ar: lib/libLLVMHexagonInfo.a
bin/llvm-ar: lib/libLLVMHexagonDisassembler.a
bin/llvm-ar: lib/libLLVMHexagonInfo.a
bin/llvm-ar: lib/libLLVMLanaiCodeGen.a
bin/llvm-ar: lib/libLLVMLanaiAsmPrinter.a
bin/llvm-ar: lib/libLLVMLanaiAsmParser.a
bin/llvm-ar: lib/libLLVMLanaiDesc.a
bin/llvm-ar: lib/libLLVMLanaiInfo.a
bin/llvm-ar: lib/libLLVMLanaiDisassembler.a
bin/llvm-ar: lib/libLLVMLanaiInfo.a
bin/llvm-ar: lib/libLLVMMipsCodeGen.a
bin/llvm-ar: lib/libLLVMMipsAsmPrinter.a
bin/llvm-ar: lib/libLLVMMipsAsmParser.a
bin/llvm-ar: lib/libLLVMMipsDesc.a
bin/llvm-ar: lib/libLLVMMipsInfo.a
bin/llvm-ar: lib/libLLVMMipsDisassembler.a
bin/llvm-ar: lib/libLLVMMipsInfo.a
bin/llvm-ar: lib/libLLVMMSP430CodeGen.a
bin/llvm-ar: lib/libLLVMMSP430AsmPrinter.a
bin/llvm-ar: lib/libLLVMMSP430Desc.a
bin/llvm-ar: lib/libLLVMMSP430Info.a
bin/llvm-ar: lib/libLLVMMSP430Info.a
bin/llvm-ar: lib/libLLVMNVPTXCodeGen.a
bin/llvm-ar: lib/libLLVMNVPTXAsmPrinter.a
bin/llvm-ar: lib/libLLVMNVPTXDesc.a
bin/llvm-ar: lib/libLLVMNVPTXInfo.a
bin/llvm-ar: lib/libLLVMNVPTXInfo.a
bin/llvm-ar: lib/libLLVMPowerPCCodeGen.a
bin/llvm-ar: lib/libLLVMPowerPCAsmPrinter.a
bin/llvm-ar: lib/libLLVMPowerPCAsmParser.a
bin/llvm-ar: lib/libLLVMPowerPCDesc.a
bin/llvm-ar: lib/libLLVMPowerPCInfo.a
bin/llvm-ar: lib/libLLVMPowerPCDisassembler.a
bin/llvm-ar: lib/libLLVMPowerPCInfo.a
bin/llvm-ar: lib/libLLVMSparcCodeGen.a
bin/llvm-ar: lib/libLLVMSparcAsmPrinter.a
bin/llvm-ar: lib/libLLVMSparcAsmParser.a
bin/llvm-ar: lib/libLLVMSparcDesc.a
bin/llvm-ar: lib/libLLVMSparcInfo.a
bin/llvm-ar: lib/libLLVMSparcDisassembler.a
bin/llvm-ar: lib/libLLVMSparcInfo.a
bin/llvm-ar: lib/libLLVMSystemZCodeGen.a
bin/llvm-ar: lib/libLLVMSystemZAsmPrinter.a
bin/llvm-ar: lib/libLLVMSystemZAsmParser.a
bin/llvm-ar: lib/libLLVMSystemZDesc.a
bin/llvm-ar: lib/libLLVMSystemZInfo.a
bin/llvm-ar: lib/libLLVMSystemZDisassembler.a
bin/llvm-ar: lib/libLLVMSystemZInfo.a
bin/llvm-ar: lib/libLLVMX86CodeGen.a
bin/llvm-ar: lib/libLLVMX86AsmPrinter.a
bin/llvm-ar: lib/libLLVMX86AsmParser.a
bin/llvm-ar: lib/libLLVMX86Desc.a
bin/llvm-ar: lib/libLLVMX86Info.a
bin/llvm-ar: lib/libLLVMX86Disassembler.a
bin/llvm-ar: lib/libLLVMX86Info.a
bin/llvm-ar: lib/libLLVMX86Utils.a
bin/llvm-ar: lib/libLLVMXCoreCodeGen.a
bin/llvm-ar: lib/libLLVMXCoreAsmPrinter.a
bin/llvm-ar: lib/libLLVMXCoreDesc.a
bin/llvm-ar: lib/libLLVMXCoreInfo.a
bin/llvm-ar: lib/libLLVMXCoreDisassembler.a
bin/llvm-ar: lib/libLLVMXCoreInfo.a
bin/llvm-ar: lib/libLLVMCore.a
bin/llvm-ar: lib/libLLVMDlltoolDriver.a
bin/llvm-ar: lib/libLLVMLibDriver.a
bin/llvm-ar: lib/libLLVMObject.a
bin/llvm-ar: lib/libLLVMSupport.a
bin/llvm-ar: lib/libLLVMAArch64Desc.a
bin/llvm-ar: lib/libLLVMAArch64AsmPrinter.a
bin/llvm-ar: lib/libLLVMAArch64Info.a
bin/llvm-ar: lib/libLLVMAArch64Utils.a
bin/llvm-ar: lib/libLLVMAMDGPUDesc.a
bin/llvm-ar: lib/libLLVMAMDGPUAsmPrinter.a
bin/llvm-ar: lib/libLLVMAMDGPUInfo.a
bin/llvm-ar: lib/libLLVMAMDGPUUtils.a
bin/llvm-ar: lib/libLLVMARMDesc.a
bin/llvm-ar: lib/libLLVMARMAsmPrinter.a
bin/llvm-ar: lib/libLLVMARMInfo.a
bin/llvm-ar: lib/libLLVMBPFAsmPrinter.a
bin/llvm-ar: lib/libLLVMHexagonDesc.a
bin/llvm-ar: lib/libLLVMHexagonInfo.a
bin/llvm-ar: lib/libLLVMLanaiDesc.a
bin/llvm-ar: lib/libLLVMLanaiAsmPrinter.a
bin/llvm-ar: lib/libLLVMLanaiInfo.a
bin/llvm-ar: lib/libLLVMMipsAsmPrinter.a
bin/llvm-ar: lib/libLLVMMSP430AsmPrinter.a
bin/llvm-ar: lib/libLLVMNVPTXAsmPrinter.a
bin/llvm-ar: lib/libLLVMipo.a
bin/llvm-ar: lib/libLLVMVectorize.a
bin/llvm-ar: lib/libLLVMIRReader.a
bin/llvm-ar: lib/libLLVMAsmParser.a
bin/llvm-ar: lib/libLLVMInstrumentation.a
bin/llvm-ar: lib/libLLVMLinker.a
bin/llvm-ar: lib/libLLVMPowerPCAsmPrinter.a
bin/llvm-ar: lib/libLLVMSparcAsmPrinter.a
bin/llvm-ar: lib/libLLVMSystemZDesc.a
bin/llvm-ar: lib/libLLVMSystemZAsmPrinter.a
bin/llvm-ar: lib/libLLVMSystemZInfo.a
bin/llvm-ar: lib/libLLVMGlobalISel.a
bin/llvm-ar: lib/libLLVMX86AsmPrinter.a
bin/llvm-ar: lib/libLLVMX86Utils.a
bin/llvm-ar: lib/libLLVMXCoreAsmPrinter.a
bin/llvm-ar: lib/libLLVMAsmPrinter.a
bin/llvm-ar: lib/libLLVMDebugInfoCodeView.a
bin/llvm-ar: lib/libLLVMDebugInfoMSF.a
bin/llvm-ar: lib/libLLVMSelectionDAG.a
bin/llvm-ar: lib/libLLVMCodeGen.a
bin/llvm-ar: lib/libLLVMScalarOpts.a
bin/llvm-ar: lib/libLLVMInstCombine.a
bin/llvm-ar: lib/libLLVMBitWriter.a
bin/llvm-ar: lib/libLLVMTarget.a
bin/llvm-ar: lib/libLLVMTransformUtils.a
bin/llvm-ar: lib/libLLVMAnalysis.a
bin/llvm-ar: lib/libLLVMProfileData.a
bin/llvm-ar: lib/libLLVMMCDisassembler.a
bin/llvm-ar: lib/libLLVMObject.a
bin/llvm-ar: lib/libLLVMMCParser.a
bin/llvm-ar: lib/libLLVMMC.a
bin/llvm-ar: lib/libLLVMBitReader.a
bin/llvm-ar: lib/libLLVMCore.a
bin/llvm-ar: lib/libLLVMBinaryFormat.a
bin/llvm-ar: lib/libLLVMOption.a
bin/llvm-ar: lib/libLLVMSupport.a
bin/llvm-ar: lib/libLLVMDemangle.a
bin/llvm-ar: tools/llvm-ar/CMakeFiles/llvm-ar.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pablo/Unreal3/AirSim/llvm-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/llvm-ar"
	cd /home/pablo/Unreal3/AirSim/llvm-build/tools/llvm-ar && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/llvm-ar.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tools/llvm-ar/CMakeFiles/llvm-ar.dir/build: bin/llvm-ar

.PHONY : tools/llvm-ar/CMakeFiles/llvm-ar.dir/build

tools/llvm-ar/CMakeFiles/llvm-ar.dir/requires: tools/llvm-ar/CMakeFiles/llvm-ar.dir/llvm-ar.cpp.o.requires

.PHONY : tools/llvm-ar/CMakeFiles/llvm-ar.dir/requires

tools/llvm-ar/CMakeFiles/llvm-ar.dir/clean:
	cd /home/pablo/Unreal3/AirSim/llvm-build/tools/llvm-ar && $(CMAKE_COMMAND) -P CMakeFiles/llvm-ar.dir/cmake_clean.cmake
.PHONY : tools/llvm-ar/CMakeFiles/llvm-ar.dir/clean

tools/llvm-ar/CMakeFiles/llvm-ar.dir/depend:
	cd /home/pablo/Unreal3/AirSim/llvm-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pablo/Unreal3/AirSim/llvm-source-50 /home/pablo/Unreal3/AirSim/llvm-source-50/tools/llvm-ar /home/pablo/Unreal3/AirSim/llvm-build /home/pablo/Unreal3/AirSim/llvm-build/tools/llvm-ar /home/pablo/Unreal3/AirSim/llvm-build/tools/llvm-ar/CMakeFiles/llvm-ar.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tools/llvm-ar/CMakeFiles/llvm-ar.dir/depend

