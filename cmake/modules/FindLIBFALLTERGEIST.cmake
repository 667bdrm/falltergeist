FIND_PATH(LIBFALLTERGEIST_INCLUDE_DIR libfalltergeist.h 
    PATHS
    ${CMAKE_SOURCE_DIR}/lib/libfalltergeist
    ~/libfalltergeist
)

FIND_LIBRARY(LIBFALLTERGEIST_LIBRARY falltergeist 
  PATHS
  ${CMAKE_SOURCE_DIR}/lib/libfalltergeist
  ~/libfalltergeist
)

IF(NOT LIBFALLTERGEIST_LIBRARY)
    MESSAGE("LIBFALLTERGEIST_LIBRARY not found... may be it must be compiled first")
ENDIF(NOT LIBFALLTERGEIST_LIBRARY)

IF(LIBFALLTERGEIST_INCLUDE_DIR)
    IF(LIBFALLTERGEIST_LIBRARY)
        SET(LIBFALLTERGEIST_FOUND "YES")
    ENDIF(LIBFALLTERGEIST_LIBRARY)
ENDIF(LIBFALLTERGEIST_INCLUDE_DIR)	
