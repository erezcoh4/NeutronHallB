# $Id: CMakeLists.txt 68058 2013-03-13 14:47:43Z gcosmo $

#----------------------------------------------------------------------------
# Setup the project
#
cmake_minimum_required(VERSION 2.6 FATAL_ERROR)
project(NeutronHallB)

#----------------------------------------------------------------------------
# Find Geant4 package, activating all available UI and Vis drivers by default
# You can set WITH_GEANT4_UIVIS to OFF via the command line or ccmake/cmake-gui
# to build a batch mode only executable
#
option(WITH_GEANT4_UIVIS "Build NeutronHallB with Geant4 UI and Vis drivers" ON)
if(WITH_GEANT4_UIVIS)
  find_package(Geant4 REQUIRED ui_all vis_all)
else()
  find_package(Geant4 REQUIRED)
endif()

#----------------------------------------------------------------------------
# Setup Geant4 include directories and compile definitions
# Setup include directory for this project
#
include(${Geant4_USE_FILE})
find_package(ROOT REQUIRED)
include_directories(${PROJECT_SOURCE_DIR}/include
	${ROOT_INCLUDE_DIR})

#----------------------------------------------------------------------------
# Find ROOT (required package)
#

#----------------------------------------------------------------------------
# Locate sources and headers for this project
# NB: headers are included so they will show up in IDEs
#
file(GLOB sources ${PROJECT_SOURCE_DIR}/src/*.cc)
file(GLOB headers ${PROJECT_SOURCE_DIR}/include/*.hh)

#----------------------------------------------------------------------------
# Add ROOT libraries properties
#
set(libsuffix .so)
set(ROOT_LIBRARY_PROPERTIES ${ROOT_LIBRARY_PROPERTIES} SUFFIX ${libsuffix})


#----------------------------------------------------------------------------
# Add the executable, and link it to the Geant4 libraries and ROOT libraries
#
add_executable(NeutronHallB NeutronHallB.cc ${sources} ${headers})
target_link_libraries(NeutronHallB ${Geant4_LIBRARIES} ${ROOT_LIBRARIES})

#----------------------------------------------------------------------------
# Copy all scripts to the build directory, i.e. the directory in which we
# build NeutronHallB. This is so that we can run the executable directly because it
# relies on these scripts being in the current working directory.
#
set(NeutronHallB_SCRIPTS
  NeutronHallB.out
  NeutronHallB.in
  icons.mac
  gui.mac
  run.png
  init.mac
  init_vis.mac
  runNeutronHallB.mac
  vis.mac
  )

foreach(_script ${NeutronHallB_SCRIPTS})
  configure_file(
    ${PROJECT_SOURCE_DIR}/${_script}
    ${PROJECT_BINARY_DIR}/${_script}
    COPYONLY
    )
endforeach()

#----------------------------------------------------------------------------
# Install the executable to 'bin' directory under CMAKE_INSTALL_PREFIX
#
# install(TARGETS NeutronHallB DESTINATION bin)

