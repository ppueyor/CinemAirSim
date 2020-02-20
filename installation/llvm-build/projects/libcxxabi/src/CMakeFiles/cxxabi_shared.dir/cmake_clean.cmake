file(REMOVE_RECURSE
  "../../../lib/libc++abi.pdb"
  "../../../lib/libc++abi.so.1.0"
  "../../../lib/libc++abi.so"
  "../../../lib/libc++abi.so.1"
)

# Per-language clean rules from dependency scanning.
foreach(lang CXX)
  include(CMakeFiles/cxxabi_shared.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
