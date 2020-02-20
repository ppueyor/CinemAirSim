file(REMOVE_RECURSE
  "../../../lib/libc++abi.pdb"
  "../../../lib/libc++abi.a"
)

# Per-language clean rules from dependency scanning.
foreach(lang CXX)
  include(CMakeFiles/cxxabi_static.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
