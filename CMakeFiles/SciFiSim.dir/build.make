# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.0

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.0.2/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.0.2/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/erezcohen/GEANT/SciFiSim

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/erezcohen/GEANT/SciFiSim

# Include any dependencies generated for this target.
include CMakeFiles/SciFiSim.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/SciFiSim.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/SciFiSim.dir/flags.make

CMakeFiles/SciFiSim.dir/SciFiSim.cc.o: CMakeFiles/SciFiSim.dir/flags.make
CMakeFiles/SciFiSim.dir/SciFiSim.cc.o: SciFiSim.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/erezcohen/GEANT/SciFiSim/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/SciFiSim.dir/SciFiSim.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/SciFiSim.dir/SciFiSim.cc.o -c /Users/erezcohen/GEANT/SciFiSim/SciFiSim.cc

CMakeFiles/SciFiSim.dir/SciFiSim.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SciFiSim.dir/SciFiSim.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/erezcohen/GEANT/SciFiSim/SciFiSim.cc > CMakeFiles/SciFiSim.dir/SciFiSim.cc.i

CMakeFiles/SciFiSim.dir/SciFiSim.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SciFiSim.dir/SciFiSim.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/erezcohen/GEANT/SciFiSim/SciFiSim.cc -o CMakeFiles/SciFiSim.dir/SciFiSim.cc.s

CMakeFiles/SciFiSim.dir/SciFiSim.cc.o.requires:
.PHONY : CMakeFiles/SciFiSim.dir/SciFiSim.cc.o.requires

CMakeFiles/SciFiSim.dir/SciFiSim.cc.o.provides: CMakeFiles/SciFiSim.dir/SciFiSim.cc.o.requires
	$(MAKE) -f CMakeFiles/SciFiSim.dir/build.make CMakeFiles/SciFiSim.dir/SciFiSim.cc.o.provides.build
.PHONY : CMakeFiles/SciFiSim.dir/SciFiSim.cc.o.provides

CMakeFiles/SciFiSim.dir/SciFiSim.cc.o.provides.build: CMakeFiles/SciFiSim.dir/SciFiSim.cc.o

CMakeFiles/SciFiSim.dir/src/SciFiSimActionInitialization.cc.o: CMakeFiles/SciFiSim.dir/flags.make
CMakeFiles/SciFiSim.dir/src/SciFiSimActionInitialization.cc.o: src/SciFiSimActionInitialization.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/erezcohen/GEANT/SciFiSim/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/SciFiSim.dir/src/SciFiSimActionInitialization.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/SciFiSim.dir/src/SciFiSimActionInitialization.cc.o -c /Users/erezcohen/GEANT/SciFiSim/src/SciFiSimActionInitialization.cc

CMakeFiles/SciFiSim.dir/src/SciFiSimActionInitialization.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SciFiSim.dir/src/SciFiSimActionInitialization.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/erezcohen/GEANT/SciFiSim/src/SciFiSimActionInitialization.cc > CMakeFiles/SciFiSim.dir/src/SciFiSimActionInitialization.cc.i

CMakeFiles/SciFiSim.dir/src/SciFiSimActionInitialization.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SciFiSim.dir/src/SciFiSimActionInitialization.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/erezcohen/GEANT/SciFiSim/src/SciFiSimActionInitialization.cc -o CMakeFiles/SciFiSim.dir/src/SciFiSimActionInitialization.cc.s

CMakeFiles/SciFiSim.dir/src/SciFiSimActionInitialization.cc.o.requires:
.PHONY : CMakeFiles/SciFiSim.dir/src/SciFiSimActionInitialization.cc.o.requires

CMakeFiles/SciFiSim.dir/src/SciFiSimActionInitialization.cc.o.provides: CMakeFiles/SciFiSim.dir/src/SciFiSimActionInitialization.cc.o.requires
	$(MAKE) -f CMakeFiles/SciFiSim.dir/build.make CMakeFiles/SciFiSim.dir/src/SciFiSimActionInitialization.cc.o.provides.build
.PHONY : CMakeFiles/SciFiSim.dir/src/SciFiSimActionInitialization.cc.o.provides

CMakeFiles/SciFiSim.dir/src/SciFiSimActionInitialization.cc.o.provides.build: CMakeFiles/SciFiSim.dir/src/SciFiSimActionInitialization.cc.o

CMakeFiles/SciFiSim.dir/src/SciFiSimAnalysisManager.cc.o: CMakeFiles/SciFiSim.dir/flags.make
CMakeFiles/SciFiSim.dir/src/SciFiSimAnalysisManager.cc.o: src/SciFiSimAnalysisManager.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/erezcohen/GEANT/SciFiSim/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/SciFiSim.dir/src/SciFiSimAnalysisManager.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/SciFiSim.dir/src/SciFiSimAnalysisManager.cc.o -c /Users/erezcohen/GEANT/SciFiSim/src/SciFiSimAnalysisManager.cc

CMakeFiles/SciFiSim.dir/src/SciFiSimAnalysisManager.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SciFiSim.dir/src/SciFiSimAnalysisManager.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/erezcohen/GEANT/SciFiSim/src/SciFiSimAnalysisManager.cc > CMakeFiles/SciFiSim.dir/src/SciFiSimAnalysisManager.cc.i

CMakeFiles/SciFiSim.dir/src/SciFiSimAnalysisManager.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SciFiSim.dir/src/SciFiSimAnalysisManager.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/erezcohen/GEANT/SciFiSim/src/SciFiSimAnalysisManager.cc -o CMakeFiles/SciFiSim.dir/src/SciFiSimAnalysisManager.cc.s

CMakeFiles/SciFiSim.dir/src/SciFiSimAnalysisManager.cc.o.requires:
.PHONY : CMakeFiles/SciFiSim.dir/src/SciFiSimAnalysisManager.cc.o.requires

CMakeFiles/SciFiSim.dir/src/SciFiSimAnalysisManager.cc.o.provides: CMakeFiles/SciFiSim.dir/src/SciFiSimAnalysisManager.cc.o.requires
	$(MAKE) -f CMakeFiles/SciFiSim.dir/build.make CMakeFiles/SciFiSim.dir/src/SciFiSimAnalysisManager.cc.o.provides.build
.PHONY : CMakeFiles/SciFiSim.dir/src/SciFiSimAnalysisManager.cc.o.provides

CMakeFiles/SciFiSim.dir/src/SciFiSimAnalysisManager.cc.o.provides.build: CMakeFiles/SciFiSim.dir/src/SciFiSimAnalysisManager.cc.o

CMakeFiles/SciFiSim.dir/src/SciFiSimDetectorConstruction.cc.o: CMakeFiles/SciFiSim.dir/flags.make
CMakeFiles/SciFiSim.dir/src/SciFiSimDetectorConstruction.cc.o: src/SciFiSimDetectorConstruction.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/erezcohen/GEANT/SciFiSim/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/SciFiSim.dir/src/SciFiSimDetectorConstruction.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/SciFiSim.dir/src/SciFiSimDetectorConstruction.cc.o -c /Users/erezcohen/GEANT/SciFiSim/src/SciFiSimDetectorConstruction.cc

CMakeFiles/SciFiSim.dir/src/SciFiSimDetectorConstruction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SciFiSim.dir/src/SciFiSimDetectorConstruction.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/erezcohen/GEANT/SciFiSim/src/SciFiSimDetectorConstruction.cc > CMakeFiles/SciFiSim.dir/src/SciFiSimDetectorConstruction.cc.i

CMakeFiles/SciFiSim.dir/src/SciFiSimDetectorConstruction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SciFiSim.dir/src/SciFiSimDetectorConstruction.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/erezcohen/GEANT/SciFiSim/src/SciFiSimDetectorConstruction.cc -o CMakeFiles/SciFiSim.dir/src/SciFiSimDetectorConstruction.cc.s

CMakeFiles/SciFiSim.dir/src/SciFiSimDetectorConstruction.cc.o.requires:
.PHONY : CMakeFiles/SciFiSim.dir/src/SciFiSimDetectorConstruction.cc.o.requires

CMakeFiles/SciFiSim.dir/src/SciFiSimDetectorConstruction.cc.o.provides: CMakeFiles/SciFiSim.dir/src/SciFiSimDetectorConstruction.cc.o.requires
	$(MAKE) -f CMakeFiles/SciFiSim.dir/build.make CMakeFiles/SciFiSim.dir/src/SciFiSimDetectorConstruction.cc.o.provides.build
.PHONY : CMakeFiles/SciFiSim.dir/src/SciFiSimDetectorConstruction.cc.o.provides

CMakeFiles/SciFiSim.dir/src/SciFiSimDetectorConstruction.cc.o.provides.build: CMakeFiles/SciFiSim.dir/src/SciFiSimDetectorConstruction.cc.o

CMakeFiles/SciFiSim.dir/src/SciFiSimDetectorMessenger.cc.o: CMakeFiles/SciFiSim.dir/flags.make
CMakeFiles/SciFiSim.dir/src/SciFiSimDetectorMessenger.cc.o: src/SciFiSimDetectorMessenger.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/erezcohen/GEANT/SciFiSim/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/SciFiSim.dir/src/SciFiSimDetectorMessenger.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/SciFiSim.dir/src/SciFiSimDetectorMessenger.cc.o -c /Users/erezcohen/GEANT/SciFiSim/src/SciFiSimDetectorMessenger.cc

CMakeFiles/SciFiSim.dir/src/SciFiSimDetectorMessenger.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SciFiSim.dir/src/SciFiSimDetectorMessenger.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/erezcohen/GEANT/SciFiSim/src/SciFiSimDetectorMessenger.cc > CMakeFiles/SciFiSim.dir/src/SciFiSimDetectorMessenger.cc.i

CMakeFiles/SciFiSim.dir/src/SciFiSimDetectorMessenger.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SciFiSim.dir/src/SciFiSimDetectorMessenger.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/erezcohen/GEANT/SciFiSim/src/SciFiSimDetectorMessenger.cc -o CMakeFiles/SciFiSim.dir/src/SciFiSimDetectorMessenger.cc.s

CMakeFiles/SciFiSim.dir/src/SciFiSimDetectorMessenger.cc.o.requires:
.PHONY : CMakeFiles/SciFiSim.dir/src/SciFiSimDetectorMessenger.cc.o.requires

CMakeFiles/SciFiSim.dir/src/SciFiSimDetectorMessenger.cc.o.provides: CMakeFiles/SciFiSim.dir/src/SciFiSimDetectorMessenger.cc.o.requires
	$(MAKE) -f CMakeFiles/SciFiSim.dir/build.make CMakeFiles/SciFiSim.dir/src/SciFiSimDetectorMessenger.cc.o.provides.build
.PHONY : CMakeFiles/SciFiSim.dir/src/SciFiSimDetectorMessenger.cc.o.provides

CMakeFiles/SciFiSim.dir/src/SciFiSimDetectorMessenger.cc.o.provides.build: CMakeFiles/SciFiSim.dir/src/SciFiSimDetectorMessenger.cc.o

CMakeFiles/SciFiSim.dir/src/SciFiSimEventAction.cc.o: CMakeFiles/SciFiSim.dir/flags.make
CMakeFiles/SciFiSim.dir/src/SciFiSimEventAction.cc.o: src/SciFiSimEventAction.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/erezcohen/GEANT/SciFiSim/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/SciFiSim.dir/src/SciFiSimEventAction.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/SciFiSim.dir/src/SciFiSimEventAction.cc.o -c /Users/erezcohen/GEANT/SciFiSim/src/SciFiSimEventAction.cc

CMakeFiles/SciFiSim.dir/src/SciFiSimEventAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SciFiSim.dir/src/SciFiSimEventAction.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/erezcohen/GEANT/SciFiSim/src/SciFiSimEventAction.cc > CMakeFiles/SciFiSim.dir/src/SciFiSimEventAction.cc.i

CMakeFiles/SciFiSim.dir/src/SciFiSimEventAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SciFiSim.dir/src/SciFiSimEventAction.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/erezcohen/GEANT/SciFiSim/src/SciFiSimEventAction.cc -o CMakeFiles/SciFiSim.dir/src/SciFiSimEventAction.cc.s

CMakeFiles/SciFiSim.dir/src/SciFiSimEventAction.cc.o.requires:
.PHONY : CMakeFiles/SciFiSim.dir/src/SciFiSimEventAction.cc.o.requires

CMakeFiles/SciFiSim.dir/src/SciFiSimEventAction.cc.o.provides: CMakeFiles/SciFiSim.dir/src/SciFiSimEventAction.cc.o.requires
	$(MAKE) -f CMakeFiles/SciFiSim.dir/build.make CMakeFiles/SciFiSim.dir/src/SciFiSimEventAction.cc.o.provides.build
.PHONY : CMakeFiles/SciFiSim.dir/src/SciFiSimEventAction.cc.o.provides

CMakeFiles/SciFiSim.dir/src/SciFiSimEventAction.cc.o.provides.build: CMakeFiles/SciFiSim.dir/src/SciFiSimEventAction.cc.o

CMakeFiles/SciFiSim.dir/src/SciFiSimPrimaryGeneratorAction.cc.o: CMakeFiles/SciFiSim.dir/flags.make
CMakeFiles/SciFiSim.dir/src/SciFiSimPrimaryGeneratorAction.cc.o: src/SciFiSimPrimaryGeneratorAction.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/erezcohen/GEANT/SciFiSim/CMakeFiles $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/SciFiSim.dir/src/SciFiSimPrimaryGeneratorAction.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/SciFiSim.dir/src/SciFiSimPrimaryGeneratorAction.cc.o -c /Users/erezcohen/GEANT/SciFiSim/src/SciFiSimPrimaryGeneratorAction.cc

CMakeFiles/SciFiSim.dir/src/SciFiSimPrimaryGeneratorAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SciFiSim.dir/src/SciFiSimPrimaryGeneratorAction.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/erezcohen/GEANT/SciFiSim/src/SciFiSimPrimaryGeneratorAction.cc > CMakeFiles/SciFiSim.dir/src/SciFiSimPrimaryGeneratorAction.cc.i

CMakeFiles/SciFiSim.dir/src/SciFiSimPrimaryGeneratorAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SciFiSim.dir/src/SciFiSimPrimaryGeneratorAction.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/erezcohen/GEANT/SciFiSim/src/SciFiSimPrimaryGeneratorAction.cc -o CMakeFiles/SciFiSim.dir/src/SciFiSimPrimaryGeneratorAction.cc.s

CMakeFiles/SciFiSim.dir/src/SciFiSimPrimaryGeneratorAction.cc.o.requires:
.PHONY : CMakeFiles/SciFiSim.dir/src/SciFiSimPrimaryGeneratorAction.cc.o.requires

CMakeFiles/SciFiSim.dir/src/SciFiSimPrimaryGeneratorAction.cc.o.provides: CMakeFiles/SciFiSim.dir/src/SciFiSimPrimaryGeneratorAction.cc.o.requires
	$(MAKE) -f CMakeFiles/SciFiSim.dir/build.make CMakeFiles/SciFiSim.dir/src/SciFiSimPrimaryGeneratorAction.cc.o.provides.build
.PHONY : CMakeFiles/SciFiSim.dir/src/SciFiSimPrimaryGeneratorAction.cc.o.provides

CMakeFiles/SciFiSim.dir/src/SciFiSimPrimaryGeneratorAction.cc.o.provides.build: CMakeFiles/SciFiSim.dir/src/SciFiSimPrimaryGeneratorAction.cc.o

CMakeFiles/SciFiSim.dir/src/SciFiSimRunAction.cc.o: CMakeFiles/SciFiSim.dir/flags.make
CMakeFiles/SciFiSim.dir/src/SciFiSimRunAction.cc.o: src/SciFiSimRunAction.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/erezcohen/GEANT/SciFiSim/CMakeFiles $(CMAKE_PROGRESS_8)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/SciFiSim.dir/src/SciFiSimRunAction.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/SciFiSim.dir/src/SciFiSimRunAction.cc.o -c /Users/erezcohen/GEANT/SciFiSim/src/SciFiSimRunAction.cc

CMakeFiles/SciFiSim.dir/src/SciFiSimRunAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SciFiSim.dir/src/SciFiSimRunAction.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/erezcohen/GEANT/SciFiSim/src/SciFiSimRunAction.cc > CMakeFiles/SciFiSim.dir/src/SciFiSimRunAction.cc.i

CMakeFiles/SciFiSim.dir/src/SciFiSimRunAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SciFiSim.dir/src/SciFiSimRunAction.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/erezcohen/GEANT/SciFiSim/src/SciFiSimRunAction.cc -o CMakeFiles/SciFiSim.dir/src/SciFiSimRunAction.cc.s

CMakeFiles/SciFiSim.dir/src/SciFiSimRunAction.cc.o.requires:
.PHONY : CMakeFiles/SciFiSim.dir/src/SciFiSimRunAction.cc.o.requires

CMakeFiles/SciFiSim.dir/src/SciFiSimRunAction.cc.o.provides: CMakeFiles/SciFiSim.dir/src/SciFiSimRunAction.cc.o.requires
	$(MAKE) -f CMakeFiles/SciFiSim.dir/build.make CMakeFiles/SciFiSim.dir/src/SciFiSimRunAction.cc.o.provides.build
.PHONY : CMakeFiles/SciFiSim.dir/src/SciFiSimRunAction.cc.o.provides

CMakeFiles/SciFiSim.dir/src/SciFiSimRunAction.cc.o.provides.build: CMakeFiles/SciFiSim.dir/src/SciFiSimRunAction.cc.o

CMakeFiles/SciFiSim.dir/src/SciFiSimTrackerHit.cc.o: CMakeFiles/SciFiSim.dir/flags.make
CMakeFiles/SciFiSim.dir/src/SciFiSimTrackerHit.cc.o: src/SciFiSimTrackerHit.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/erezcohen/GEANT/SciFiSim/CMakeFiles $(CMAKE_PROGRESS_9)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/SciFiSim.dir/src/SciFiSimTrackerHit.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/SciFiSim.dir/src/SciFiSimTrackerHit.cc.o -c /Users/erezcohen/GEANT/SciFiSim/src/SciFiSimTrackerHit.cc

CMakeFiles/SciFiSim.dir/src/SciFiSimTrackerHit.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SciFiSim.dir/src/SciFiSimTrackerHit.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/erezcohen/GEANT/SciFiSim/src/SciFiSimTrackerHit.cc > CMakeFiles/SciFiSim.dir/src/SciFiSimTrackerHit.cc.i

CMakeFiles/SciFiSim.dir/src/SciFiSimTrackerHit.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SciFiSim.dir/src/SciFiSimTrackerHit.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/erezcohen/GEANT/SciFiSim/src/SciFiSimTrackerHit.cc -o CMakeFiles/SciFiSim.dir/src/SciFiSimTrackerHit.cc.s

CMakeFiles/SciFiSim.dir/src/SciFiSimTrackerHit.cc.o.requires:
.PHONY : CMakeFiles/SciFiSim.dir/src/SciFiSimTrackerHit.cc.o.requires

CMakeFiles/SciFiSim.dir/src/SciFiSimTrackerHit.cc.o.provides: CMakeFiles/SciFiSim.dir/src/SciFiSimTrackerHit.cc.o.requires
	$(MAKE) -f CMakeFiles/SciFiSim.dir/build.make CMakeFiles/SciFiSim.dir/src/SciFiSimTrackerHit.cc.o.provides.build
.PHONY : CMakeFiles/SciFiSim.dir/src/SciFiSimTrackerHit.cc.o.provides

CMakeFiles/SciFiSim.dir/src/SciFiSimTrackerHit.cc.o.provides.build: CMakeFiles/SciFiSim.dir/src/SciFiSimTrackerHit.cc.o

CMakeFiles/SciFiSim.dir/src/SciFiSimTrackerSD.cc.o: CMakeFiles/SciFiSim.dir/flags.make
CMakeFiles/SciFiSim.dir/src/SciFiSimTrackerSD.cc.o: src/SciFiSimTrackerSD.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/erezcohen/GEANT/SciFiSim/CMakeFiles $(CMAKE_PROGRESS_10)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/SciFiSim.dir/src/SciFiSimTrackerSD.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/SciFiSim.dir/src/SciFiSimTrackerSD.cc.o -c /Users/erezcohen/GEANT/SciFiSim/src/SciFiSimTrackerSD.cc

CMakeFiles/SciFiSim.dir/src/SciFiSimTrackerSD.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SciFiSim.dir/src/SciFiSimTrackerSD.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/erezcohen/GEANT/SciFiSim/src/SciFiSimTrackerSD.cc > CMakeFiles/SciFiSim.dir/src/SciFiSimTrackerSD.cc.i

CMakeFiles/SciFiSim.dir/src/SciFiSimTrackerSD.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SciFiSim.dir/src/SciFiSimTrackerSD.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/erezcohen/GEANT/SciFiSim/src/SciFiSimTrackerSD.cc -o CMakeFiles/SciFiSim.dir/src/SciFiSimTrackerSD.cc.s

CMakeFiles/SciFiSim.dir/src/SciFiSimTrackerSD.cc.o.requires:
.PHONY : CMakeFiles/SciFiSim.dir/src/SciFiSimTrackerSD.cc.o.requires

CMakeFiles/SciFiSim.dir/src/SciFiSimTrackerSD.cc.o.provides: CMakeFiles/SciFiSim.dir/src/SciFiSimTrackerSD.cc.o.requires
	$(MAKE) -f CMakeFiles/SciFiSim.dir/build.make CMakeFiles/SciFiSim.dir/src/SciFiSimTrackerSD.cc.o.provides.build
.PHONY : CMakeFiles/SciFiSim.dir/src/SciFiSimTrackerSD.cc.o.provides

CMakeFiles/SciFiSim.dir/src/SciFiSimTrackerSD.cc.o.provides.build: CMakeFiles/SciFiSim.dir/src/SciFiSimTrackerSD.cc.o

# Object files for target SciFiSim
SciFiSim_OBJECTS = \
"CMakeFiles/SciFiSim.dir/SciFiSim.cc.o" \
"CMakeFiles/SciFiSim.dir/src/SciFiSimActionInitialization.cc.o" \
"CMakeFiles/SciFiSim.dir/src/SciFiSimAnalysisManager.cc.o" \
"CMakeFiles/SciFiSim.dir/src/SciFiSimDetectorConstruction.cc.o" \
"CMakeFiles/SciFiSim.dir/src/SciFiSimDetectorMessenger.cc.o" \
"CMakeFiles/SciFiSim.dir/src/SciFiSimEventAction.cc.o" \
"CMakeFiles/SciFiSim.dir/src/SciFiSimPrimaryGeneratorAction.cc.o" \
"CMakeFiles/SciFiSim.dir/src/SciFiSimRunAction.cc.o" \
"CMakeFiles/SciFiSim.dir/src/SciFiSimTrackerHit.cc.o" \
"CMakeFiles/SciFiSim.dir/src/SciFiSimTrackerSD.cc.o"

# External object files for target SciFiSim
SciFiSim_EXTERNAL_OBJECTS =

SciFiSim: CMakeFiles/SciFiSim.dir/SciFiSim.cc.o
SciFiSim: CMakeFiles/SciFiSim.dir/src/SciFiSimActionInitialization.cc.o
SciFiSim: CMakeFiles/SciFiSim.dir/src/SciFiSimAnalysisManager.cc.o
SciFiSim: CMakeFiles/SciFiSim.dir/src/SciFiSimDetectorConstruction.cc.o
SciFiSim: CMakeFiles/SciFiSim.dir/src/SciFiSimDetectorMessenger.cc.o
SciFiSim: CMakeFiles/SciFiSim.dir/src/SciFiSimEventAction.cc.o
SciFiSim: CMakeFiles/SciFiSim.dir/src/SciFiSimPrimaryGeneratorAction.cc.o
SciFiSim: CMakeFiles/SciFiSim.dir/src/SciFiSimRunAction.cc.o
SciFiSim: CMakeFiles/SciFiSim.dir/src/SciFiSimTrackerHit.cc.o
SciFiSim: CMakeFiles/SciFiSim.dir/src/SciFiSimTrackerSD.cc.o
SciFiSim: CMakeFiles/SciFiSim.dir/build.make
SciFiSim: /Users/erezcohen/GEANT/geant4.10.00.p03-build/outputs/library/Darwin-clang/libG4Tree.dylib
SciFiSim: /Users/erezcohen/GEANT/geant4.10.00.p03-build/outputs/library/Darwin-clang/libG4FR.dylib
SciFiSim: /Users/erezcohen/GEANT/geant4.10.00.p03-build/outputs/library/Darwin-clang/libG4GMocren.dylib
SciFiSim: /Users/erezcohen/GEANT/geant4.10.00.p03-build/outputs/library/Darwin-clang/libG4visHepRep.dylib
SciFiSim: /Users/erezcohen/GEANT/geant4.10.00.p03-build/outputs/library/Darwin-clang/libG4RayTracer.dylib
SciFiSim: /Users/erezcohen/GEANT/geant4.10.00.p03-build/outputs/library/Darwin-clang/libG4VRML.dylib
SciFiSim: /Users/erezcohen/GEANT/geant4.10.00.p03-build/outputs/library/Darwin-clang/libG4OpenGL.dylib
SciFiSim: /Users/erezcohen/GEANT/geant4.10.00.p03-build/outputs/library/Darwin-clang/libG4gl2ps.dylib
SciFiSim: /Users/erezcohen/GEANT/geant4.10.00.p03-build/outputs/library/Darwin-clang/libG4vis_management.dylib
SciFiSim: /Users/erezcohen/GEANT/geant4.10.00.p03-build/outputs/library/Darwin-clang/libG4modeling.dylib
SciFiSim: /Users/erezcohen/GEANT/geant4.10.00.p03-build/outputs/library/Darwin-clang/libG4interfaces.dylib
SciFiSim: /Users/erezcohen/GEANT/geant4.10.00.p03-build/outputs/library/Darwin-clang/libG4persistency.dylib
SciFiSim: /Users/erezcohen/GEANT/geant4.10.00.p03-build/outputs/library/Darwin-clang/libG4analysis.dylib
SciFiSim: /Users/erezcohen/GEANT/geant4.10.00.p03-build/outputs/library/Darwin-clang/libG4error_propagation.dylib
SciFiSim: /Users/erezcohen/GEANT/geant4.10.00.p03-build/outputs/library/Darwin-clang/libG4readout.dylib
SciFiSim: /Users/erezcohen/GEANT/geant4.10.00.p03-build/outputs/library/Darwin-clang/libG4physicslists.dylib
SciFiSim: /Users/erezcohen/GEANT/geant4.10.00.p03-build/outputs/library/Darwin-clang/libG4run.dylib
SciFiSim: /Users/erezcohen/GEANT/geant4.10.00.p03-build/outputs/library/Darwin-clang/libG4event.dylib
SciFiSim: /Users/erezcohen/GEANT/geant4.10.00.p03-build/outputs/library/Darwin-clang/libG4tracking.dylib
SciFiSim: /Users/erezcohen/GEANT/geant4.10.00.p03-build/outputs/library/Darwin-clang/libG4parmodels.dylib
SciFiSim: /Users/erezcohen/GEANT/geant4.10.00.p03-build/outputs/library/Darwin-clang/libG4processes.dylib
SciFiSim: /Users/erezcohen/GEANT/geant4.10.00.p03-build/outputs/library/Darwin-clang/libG4digits_hits.dylib
SciFiSim: /Users/erezcohen/GEANT/geant4.10.00.p03-build/outputs/library/Darwin-clang/libG4track.dylib
SciFiSim: /Users/erezcohen/GEANT/geant4.10.00.p03-build/outputs/library/Darwin-clang/libG4particles.dylib
SciFiSim: /Users/erezcohen/GEANT/geant4.10.00.p03-build/outputs/library/Darwin-clang/libG4geometry.dylib
SciFiSim: /Users/erezcohen/GEANT/geant4.10.00.p03-build/outputs/library/Darwin-clang/libG4materials.dylib
SciFiSim: /Users/erezcohen/GEANT/geant4.10.00.p03-build/outputs/library/Darwin-clang/libG4graphics_reps.dylib
SciFiSim: /Users/erezcohen/GEANT/geant4.10.00.p03-build/outputs/library/Darwin-clang/libG4intercoms.dylib
SciFiSim: /Users/erezcohen/GEANT/geant4.10.00.p03-build/outputs/library/Darwin-clang/libG4global.dylib
SciFiSim: /Users/erezcohen/GEANT/geant4.10.00.p03-build/outputs/library/Darwin-clang/libG4clhep.dylib
SciFiSim: /Users/erezcohen/GEANT/geant4.10.00.p03-build/outputs/library/Darwin-clang/libG4zlib.dylib
SciFiSim: /Users/erezcohen/GEANT/geant4.10.00.p03-build/outputs/library/Darwin-clang/libG4FR.dylib
SciFiSim: /Users/erezcohen/GEANT/geant4.10.00.p03-build/outputs/library/Darwin-clang/libG4vis_management.dylib
SciFiSim: /Users/erezcohen/GEANT/geant4.10.00.p03-build/outputs/library/Darwin-clang/libG4modeling.dylib
SciFiSim: /usr/X11R6/lib/libGL.dylib
SciFiSim: /usr/X11R6/lib/libGLU.dylib
SciFiSim: /usr/X11R6/lib/libSM.dylib
SciFiSim: /usr/X11R6/lib/libICE.dylib
SciFiSim: /usr/X11R6/lib/libX11.dylib
SciFiSim: /usr/X11R6/lib/libXext.dylib
SciFiSim: /usr/X11R6/lib/libXmu.dylib
SciFiSim: /Users/erezcohen/GEANT/geant4.10.00.p03-build/outputs/library/Darwin-clang/libG4run.dylib
SciFiSim: /Users/erezcohen/GEANT/geant4.10.00.p03-build/outputs/library/Darwin-clang/libG4event.dylib
SciFiSim: /Users/erezcohen/GEANT/geant4.10.00.p03-build/outputs/library/Darwin-clang/libG4tracking.dylib
SciFiSim: /Users/erezcohen/GEANT/geant4.10.00.p03-build/outputs/library/Darwin-clang/libG4processes.dylib
SciFiSim: /Users/erezcohen/GEANT/geant4.10.00.p03-build/outputs/library/Darwin-clang/libG4zlib.dylib
SciFiSim: /usr/lib/libexpat.dylib
SciFiSim: /Users/erezcohen/GEANT/geant4.10.00.p03-build/outputs/library/Darwin-clang/libG4digits_hits.dylib
SciFiSim: /Users/erezcohen/GEANT/geant4.10.00.p03-build/outputs/library/Darwin-clang/libG4track.dylib
SciFiSim: /Users/erezcohen/GEANT/geant4.10.00.p03-build/outputs/library/Darwin-clang/libG4particles.dylib
SciFiSim: /Users/erezcohen/GEANT/geant4.10.00.p03-build/outputs/library/Darwin-clang/libG4geometry.dylib
SciFiSim: /Users/erezcohen/GEANT/geant4.10.00.p03-build/outputs/library/Darwin-clang/libG4materials.dylib
SciFiSim: /Users/erezcohen/GEANT/geant4.10.00.p03-build/outputs/library/Darwin-clang/libG4graphics_reps.dylib
SciFiSim: /Users/erezcohen/GEANT/geant4.10.00.p03-build/outputs/library/Darwin-clang/libG4intercoms.dylib
SciFiSim: /Users/erezcohen/GEANT/geant4.10.00.p03-build/outputs/library/Darwin-clang/libG4global.dylib
SciFiSim: /Users/erezcohen/GEANT/geant4.10.00.p03-build/outputs/library/Darwin-clang/libG4clhep.dylib
SciFiSim: CMakeFiles/SciFiSim.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable SciFiSim"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/SciFiSim.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/SciFiSim.dir/build: SciFiSim
.PHONY : CMakeFiles/SciFiSim.dir/build

CMakeFiles/SciFiSim.dir/requires: CMakeFiles/SciFiSim.dir/SciFiSim.cc.o.requires
CMakeFiles/SciFiSim.dir/requires: CMakeFiles/SciFiSim.dir/src/SciFiSimActionInitialization.cc.o.requires
CMakeFiles/SciFiSim.dir/requires: CMakeFiles/SciFiSim.dir/src/SciFiSimAnalysisManager.cc.o.requires
CMakeFiles/SciFiSim.dir/requires: CMakeFiles/SciFiSim.dir/src/SciFiSimDetectorConstruction.cc.o.requires
CMakeFiles/SciFiSim.dir/requires: CMakeFiles/SciFiSim.dir/src/SciFiSimDetectorMessenger.cc.o.requires
CMakeFiles/SciFiSim.dir/requires: CMakeFiles/SciFiSim.dir/src/SciFiSimEventAction.cc.o.requires
CMakeFiles/SciFiSim.dir/requires: CMakeFiles/SciFiSim.dir/src/SciFiSimPrimaryGeneratorAction.cc.o.requires
CMakeFiles/SciFiSim.dir/requires: CMakeFiles/SciFiSim.dir/src/SciFiSimRunAction.cc.o.requires
CMakeFiles/SciFiSim.dir/requires: CMakeFiles/SciFiSim.dir/src/SciFiSimTrackerHit.cc.o.requires
CMakeFiles/SciFiSim.dir/requires: CMakeFiles/SciFiSim.dir/src/SciFiSimTrackerSD.cc.o.requires
.PHONY : CMakeFiles/SciFiSim.dir/requires

CMakeFiles/SciFiSim.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/SciFiSim.dir/cmake_clean.cmake
.PHONY : CMakeFiles/SciFiSim.dir/clean

CMakeFiles/SciFiSim.dir/depend:
	cd /Users/erezcohen/GEANT/SciFiSim && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/erezcohen/GEANT/SciFiSim /Users/erezcohen/GEANT/SciFiSim /Users/erezcohen/GEANT/SciFiSim /Users/erezcohen/GEANT/SciFiSim /Users/erezcohen/GEANT/SciFiSim/CMakeFiles/SciFiSim.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/SciFiSim.dir/depend

