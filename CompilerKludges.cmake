# Creates an interface library compiler-kludges that sets a number of
# preprocessor variables used for workarounds for broken compilers or
# standard library implementations.
#
# Each file in the kludges/ subdirectory is included(). To add another
# kludge, just add a file in the kludges/ subdirectory.
file(GLOB COMPILER_KLUDGE_FILES ${CMAKE_CURRENT_LIST_DIR}/kludges/*.cmake)

macro(CompilerKludges)
  add_library(compiler-kludges INTERFACE)

  foreach(kludge ${COMPILER_KLUDGE_FILES})
    include(${kludge})
  endforeach()
endmacro()
