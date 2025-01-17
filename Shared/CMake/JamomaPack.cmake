if(WIN32)
# We need to deploy our DLLs too.
if (NOT MINGW-W64)
  find_package(LibXml2 CONFIG)
  get_target_property(XML2_DLL xml2 IMPORTED_LOCATION)
  install(FILES "${XML2_DLL}"
	  DESTINATION support)
endif()

# TODO portaudio, sndfile, etc...
endif()

SET(CPACK_PACKAGE_NAME "JamomaCore")
SET(CPACK_PACKAGE_VENDOR "The Jamoma Foundation")

SET(CPACK_PACKAGE_DESCRIPTION_SUMMARY "Jamoma is a community-based project, dedicated to the development of several toolsets and frameworks for artistic creation through digital means. ")
SET(CPACK_PACKAGE_VERSION "0.6-dev")
SET(CPACK_PACKAGE_VERSION_MAJOR "0")
SET(CPACK_PACKAGE_VERSION_MINOR "6")

SET(CPACK_SOURCE_GENERATOR TGZ)
SET(CPACK_SOURCE_PACKAGE_FILE_NAME "JamomaCore-0.6-dev")
SET(CPACK_DEBIAN_PACKAGE_DEPENDS "libxml2, libportmidi0")
SET(CPACK_DEBIAN_PACKAGE_RECOMMENDS "libportaudio2, libsndfile1")
SET(CPACK_DEBIAN_PACKAGE_SECTION "libs")

INCLUDE(CPack)

