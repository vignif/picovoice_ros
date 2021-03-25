FIND_PATH(LIBSNDFILE_INCLUDE_DIRS sndfile.h)

SET(LIBSNDFILE_NAMES ${LIBSNDFILE_NAMES} sndfile libsndfile)
FIND_LIBRARY(LIBSNDFILE_LIBRARIES NAMES ${LIBSNDFILE_NAMES} PATH)

IF (LIBSNDFILE_INCLUDE_DIRS AND LIBSNDFILE_LIBRARIES)
  SET(LIBSNDFILE_FOUND TRUE)
ENDIF (LIBSNDFILE_INCLUDE_DIRS AND LIBSNDFILE_LIBRARIES)

IF (LIBSNDFILE_FOUND)
  IF (NOT LibSndFile_FIND_QUIETLY)
    MESSAGE (STATUS "Found LibSndFile: ${LIBSNDFILE_LIBRARIES}")
  ENDIF (NOT LibSndFile_FIND_QUIETLY)
ELSE (LIBSNDFILE_FOUND)
  IF (LibSndFile_FIND_REQUIRED)
    MESSAGE (FATAL_ERROR "Could not find sndfile")
  ENDIF (LibSndFile_FIND_REQUIRED)
ENDIF (LIBSNDFILE_FOUND)