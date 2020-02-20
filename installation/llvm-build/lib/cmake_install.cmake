# Install script for directory: /home/pablo/Unreal3/AirSim/llvm-source-50/lib

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/pablo/Unreal3/AirSim/llvm-build/output")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "RelWithDebInfo")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/pablo/Unreal3/AirSim/llvm-build/lib/IR/cmake_install.cmake")
  include("/home/pablo/Unreal3/AirSim/llvm-build/lib/IRReader/cmake_install.cmake")
  include("/home/pablo/Unreal3/AirSim/llvm-build/lib/CodeGen/cmake_install.cmake")
  include("/home/pablo/Unreal3/AirSim/llvm-build/lib/BinaryFormat/cmake_install.cmake")
  include("/home/pablo/Unreal3/AirSim/llvm-build/lib/Bitcode/cmake_install.cmake")
  include("/home/pablo/Unreal3/AirSim/llvm-build/lib/Transforms/cmake_install.cmake")
  include("/home/pablo/Unreal3/AirSim/llvm-build/lib/Linker/cmake_install.cmake")
  include("/home/pablo/Unreal3/AirSim/llvm-build/lib/Analysis/cmake_install.cmake")
  include("/home/pablo/Unreal3/AirSim/llvm-build/lib/LTO/cmake_install.cmake")
  include("/home/pablo/Unreal3/AirSim/llvm-build/lib/MC/cmake_install.cmake")
  include("/home/pablo/Unreal3/AirSim/llvm-build/lib/Object/cmake_install.cmake")
  include("/home/pablo/Unreal3/AirSim/llvm-build/lib/ObjectYAML/cmake_install.cmake")
  include("/home/pablo/Unreal3/AirSim/llvm-build/lib/Option/cmake_install.cmake")
  include("/home/pablo/Unreal3/AirSim/llvm-build/lib/DebugInfo/cmake_install.cmake")
  include("/home/pablo/Unreal3/AirSim/llvm-build/lib/ExecutionEngine/cmake_install.cmake")
  include("/home/pablo/Unreal3/AirSim/llvm-build/lib/Target/cmake_install.cmake")
  include("/home/pablo/Unreal3/AirSim/llvm-build/lib/AsmParser/cmake_install.cmake")
  include("/home/pablo/Unreal3/AirSim/llvm-build/lib/LineEditor/cmake_install.cmake")
  include("/home/pablo/Unreal3/AirSim/llvm-build/lib/ProfileData/cmake_install.cmake")
  include("/home/pablo/Unreal3/AirSim/llvm-build/lib/Fuzzer/cmake_install.cmake")
  include("/home/pablo/Unreal3/AirSim/llvm-build/lib/Passes/cmake_install.cmake")
  include("/home/pablo/Unreal3/AirSim/llvm-build/lib/ToolDrivers/cmake_install.cmake")
  include("/home/pablo/Unreal3/AirSim/llvm-build/lib/XRay/cmake_install.cmake")
  include("/home/pablo/Unreal3/AirSim/llvm-build/lib/Testing/cmake_install.cmake")

endif()

