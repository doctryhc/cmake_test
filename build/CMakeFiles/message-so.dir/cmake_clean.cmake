file(REMOVE_RECURSE
  "libmessage-so.pdb"
  "libmessage-so.so"
)

# Per-language clean rules from dependency scanning.
foreach(lang CXX)
  include(CMakeFiles/message-so.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
