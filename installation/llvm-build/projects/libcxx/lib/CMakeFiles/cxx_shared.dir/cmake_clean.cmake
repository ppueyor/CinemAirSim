file(REMOVE_RECURSE
  "../../../lib/libc++.pdb"
  "../../../lib/libc++.so.1.0"
  "../../../lib/libc++.so"
  "../../../lib/libc++.so.1"
)

# Per-language clean rules from dependency scanning.
foreach(lang CXX)
  include(CMakeFiles/cxx_shared.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
