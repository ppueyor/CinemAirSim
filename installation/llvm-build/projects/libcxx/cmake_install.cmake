# Install script for directory: /home/pablo/Unreal3/AirSim/llvm-source-50/projects/libcxx

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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibcxxx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/c++/v1" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES "/home/pablo/Unreal3/AirSim/llvm-build/projects/libcxx/include/c++build/cxxabi.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibcxxx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/c++/v1" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES "/home/pablo/Unreal3/AirSim/llvm-build/projects/libcxx/include/c++build/__cxxabi_config.h")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/pablo/Unreal3/AirSim/llvm-build/projects/libcxx/include/cmake_install.cmake")
  include("/home/pablo/Unreal3/AirSim/llvm-build/projects/libcxx/lib/cmake_install.cmake")
  include("/home/pablo/Unreal3/AirSim/llvm-build/projects/libcxx/benchmarks/cmake_install.cmake")
  include("/home/pablo/Unreal3/AirSim/llvm-build/projects/libcxx/test/cmake_install.cmake")
  include("/home/pablo/Unreal3/AirSim/llvm-build/projects/libcxx/lib/abi/cmake_install.cmake")
  include("/home/pablo/Unreal3/AirSim/llvm-build/projects/libcxx/docs/cmake_install.cmake")

endif()

