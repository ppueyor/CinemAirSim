
set(CMAKE_C_COMPILER "/usr/bin/clang-5.0" CACHE STRING "Initial cache" FORCE)
set(CMAKE_CXX_COMPILER "/usr/bin/clang++-5.0" CACHE STRING "Initial cache" FORCE)
set(CMAKE_BUILD_TYPE "RELEASE" CACHE STRING "Initial cache" FORCE)
set(CMAKE_INSTALL_PREFIX "/home/pablo/Unreal3/AirSim/llvm-build/projects/libcxx/benchmarks/benchmark-libcxx" CACHE PATH "Initial cache" FORCE)
set(CMAKE_CXX_FLAGS "-Wno-unused-command-line-argument -nostdinc++ -isystem /home/pablo/Unreal3/AirSim/llvm-source-50/projects/libcxx/include -L/home/pablo/Unreal3/AirSim/llvm-build/./lib -Wl,-rpath,/home/pablo/Unreal3/AirSim/llvm-build/./lib -L -Wl,-rpath," CACHE STRING "Initial cache" FORCE)
set(BENCHMARK_USE_LIBCXX "ON" CACHE BOOL "Initial cache" FORCE)
set(BENCHMARK_ENABLE_TESTING "OFF" CACHE BOOL "Initial cache" FORCE)