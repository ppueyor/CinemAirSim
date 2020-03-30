cmake_minimum_required(VERSION 3.10.0)
project(cinemairsim_demo)

#Uncomment and set the path of your AirSim installation.
#set(AIRSIM_ROOT /path/of/AirSim)

#Example:
#set(AIRSIM_ROOT /home/user/Documents/Unreal/AirSim)

add_subdirectory("${AIRSIM_ROOT}/cmake/rpclib_wrapper" rpclib_wrapper)
add_subdirectory("${AIRSIM_ROOT}/cmake/AirLib" AirLib)
add_subdirectory("${AIRSIM_ROOT}/cmake/MavLinkCom" MavLinkCom)

set(CMAKE_CXX_STANDARD 11) 
set(RPC_LIB_INCLUDES " ${AIRSIM_ROOT}/external/rpclib/rpclib-2.2.1/include")
set(RPC_LIB rpc)
message(STATUS "found RPC_LIB_INCLUDES=${RPC_LIB_INCLUDES}")

include_directories(${AIRSIM_ROOT}/AirLib/deps/eigen3)

include_directories(
  include
  ${AIRSIM_ROOT}/AirLib/deps/eigen3
  ${AIRSIM_ROOT}/AirLib/include/
  ${RPC_LIB_INCLUDES}
  ${AIRSIM_ROOT}/MavLinkCom/include
  ${AIRSIM_ROOT}/MavLinkCom/common_utils
)

add_executable(cinemairsim_demo "src/cinemairsim_demo.cpp")

target_link_libraries(cinemairsim_demo AirLib)

