# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.2

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/llamaphone/PG

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/llamaphone/PG

# Include any dependencies generated for this target.
include glfw/tests/CMakeFiles/events.dir/depend.make

# Include the progress variables for this target.
include glfw/tests/CMakeFiles/events.dir/progress.make

# Include the compile flags for this target's objects.
include glfw/tests/CMakeFiles/events.dir/flags.make

glfw/tests/CMakeFiles/events.dir/events.c.o: glfw/tests/CMakeFiles/events.dir/flags.make
glfw/tests/CMakeFiles/events.dir/events.c.o: glfw/tests/events.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/llamaphone/PG/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object glfw/tests/CMakeFiles/events.dir/events.c.o"
	cd /home/llamaphone/PG/glfw/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/events.dir/events.c.o   -c /home/llamaphone/PG/glfw/tests/events.c

glfw/tests/CMakeFiles/events.dir/events.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/events.dir/events.c.i"
	cd /home/llamaphone/PG/glfw/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/llamaphone/PG/glfw/tests/events.c > CMakeFiles/events.dir/events.c.i

glfw/tests/CMakeFiles/events.dir/events.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/events.dir/events.c.s"
	cd /home/llamaphone/PG/glfw/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/llamaphone/PG/glfw/tests/events.c -o CMakeFiles/events.dir/events.c.s

glfw/tests/CMakeFiles/events.dir/events.c.o.requires:
.PHONY : glfw/tests/CMakeFiles/events.dir/events.c.o.requires

glfw/tests/CMakeFiles/events.dir/events.c.o.provides: glfw/tests/CMakeFiles/events.dir/events.c.o.requires
	$(MAKE) -f glfw/tests/CMakeFiles/events.dir/build.make glfw/tests/CMakeFiles/events.dir/events.c.o.provides.build
.PHONY : glfw/tests/CMakeFiles/events.dir/events.c.o.provides

glfw/tests/CMakeFiles/events.dir/events.c.o.provides.build: glfw/tests/CMakeFiles/events.dir/events.c.o

glfw/tests/CMakeFiles/events.dir/__/deps/getopt.c.o: glfw/tests/CMakeFiles/events.dir/flags.make
glfw/tests/CMakeFiles/events.dir/__/deps/getopt.c.o: glfw/deps/getopt.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/llamaphone/PG/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object glfw/tests/CMakeFiles/events.dir/__/deps/getopt.c.o"
	cd /home/llamaphone/PG/glfw/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/events.dir/__/deps/getopt.c.o   -c /home/llamaphone/PG/glfw/deps/getopt.c

glfw/tests/CMakeFiles/events.dir/__/deps/getopt.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/events.dir/__/deps/getopt.c.i"
	cd /home/llamaphone/PG/glfw/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/llamaphone/PG/glfw/deps/getopt.c > CMakeFiles/events.dir/__/deps/getopt.c.i

glfw/tests/CMakeFiles/events.dir/__/deps/getopt.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/events.dir/__/deps/getopt.c.s"
	cd /home/llamaphone/PG/glfw/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/llamaphone/PG/glfw/deps/getopt.c -o CMakeFiles/events.dir/__/deps/getopt.c.s

glfw/tests/CMakeFiles/events.dir/__/deps/getopt.c.o.requires:
.PHONY : glfw/tests/CMakeFiles/events.dir/__/deps/getopt.c.o.requires

glfw/tests/CMakeFiles/events.dir/__/deps/getopt.c.o.provides: glfw/tests/CMakeFiles/events.dir/__/deps/getopt.c.o.requires
	$(MAKE) -f glfw/tests/CMakeFiles/events.dir/build.make glfw/tests/CMakeFiles/events.dir/__/deps/getopt.c.o.provides.build
.PHONY : glfw/tests/CMakeFiles/events.dir/__/deps/getopt.c.o.provides

glfw/tests/CMakeFiles/events.dir/__/deps/getopt.c.o.provides.build: glfw/tests/CMakeFiles/events.dir/__/deps/getopt.c.o

glfw/tests/CMakeFiles/events.dir/__/deps/glad.c.o: glfw/tests/CMakeFiles/events.dir/flags.make
glfw/tests/CMakeFiles/events.dir/__/deps/glad.c.o: glfw/deps/glad.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/llamaphone/PG/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object glfw/tests/CMakeFiles/events.dir/__/deps/glad.c.o"
	cd /home/llamaphone/PG/glfw/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/events.dir/__/deps/glad.c.o   -c /home/llamaphone/PG/glfw/deps/glad.c

glfw/tests/CMakeFiles/events.dir/__/deps/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/events.dir/__/deps/glad.c.i"
	cd /home/llamaphone/PG/glfw/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/llamaphone/PG/glfw/deps/glad.c > CMakeFiles/events.dir/__/deps/glad.c.i

glfw/tests/CMakeFiles/events.dir/__/deps/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/events.dir/__/deps/glad.c.s"
	cd /home/llamaphone/PG/glfw/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/llamaphone/PG/glfw/deps/glad.c -o CMakeFiles/events.dir/__/deps/glad.c.s

glfw/tests/CMakeFiles/events.dir/__/deps/glad.c.o.requires:
.PHONY : glfw/tests/CMakeFiles/events.dir/__/deps/glad.c.o.requires

glfw/tests/CMakeFiles/events.dir/__/deps/glad.c.o.provides: glfw/tests/CMakeFiles/events.dir/__/deps/glad.c.o.requires
	$(MAKE) -f glfw/tests/CMakeFiles/events.dir/build.make glfw/tests/CMakeFiles/events.dir/__/deps/glad.c.o.provides.build
.PHONY : glfw/tests/CMakeFiles/events.dir/__/deps/glad.c.o.provides

glfw/tests/CMakeFiles/events.dir/__/deps/glad.c.o.provides.build: glfw/tests/CMakeFiles/events.dir/__/deps/glad.c.o

# Object files for target events
events_OBJECTS = \
"CMakeFiles/events.dir/events.c.o" \
"CMakeFiles/events.dir/__/deps/getopt.c.o" \
"CMakeFiles/events.dir/__/deps/glad.c.o"

# External object files for target events
events_EXTERNAL_OBJECTS =

glfw/tests/events: glfw/tests/CMakeFiles/events.dir/events.c.o
glfw/tests/events: glfw/tests/CMakeFiles/events.dir/__/deps/getopt.c.o
glfw/tests/events: glfw/tests/CMakeFiles/events.dir/__/deps/glad.c.o
glfw/tests/events: glfw/tests/CMakeFiles/events.dir/build.make
glfw/tests/events: glfw/src/libglfw3.a
glfw/tests/events: /usr/lib/x86_64-linux-gnu/librt.so
glfw/tests/events: /usr/lib/x86_64-linux-gnu/libm.so
glfw/tests/events: /usr/lib/x86_64-linux-gnu/libX11.so
glfw/tests/events: /usr/lib/x86_64-linux-gnu/libXrandr.so
glfw/tests/events: /usr/lib/x86_64-linux-gnu/libXinerama.so
glfw/tests/events: /usr/lib/x86_64-linux-gnu/libXxf86vm.so
glfw/tests/events: /usr/lib/x86_64-linux-gnu/libXcursor.so
glfw/tests/events: glfw/tests/CMakeFiles/events.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable events"
	cd /home/llamaphone/PG/glfw/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/events.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
glfw/tests/CMakeFiles/events.dir/build: glfw/tests/events
.PHONY : glfw/tests/CMakeFiles/events.dir/build

glfw/tests/CMakeFiles/events.dir/requires: glfw/tests/CMakeFiles/events.dir/events.c.o.requires
glfw/tests/CMakeFiles/events.dir/requires: glfw/tests/CMakeFiles/events.dir/__/deps/getopt.c.o.requires
glfw/tests/CMakeFiles/events.dir/requires: glfw/tests/CMakeFiles/events.dir/__/deps/glad.c.o.requires
.PHONY : glfw/tests/CMakeFiles/events.dir/requires

glfw/tests/CMakeFiles/events.dir/clean:
	cd /home/llamaphone/PG/glfw/tests && $(CMAKE_COMMAND) -P CMakeFiles/events.dir/cmake_clean.cmake
.PHONY : glfw/tests/CMakeFiles/events.dir/clean

glfw/tests/CMakeFiles/events.dir/depend:
	cd /home/llamaphone/PG && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/llamaphone/PG /home/llamaphone/PG/glfw/tests /home/llamaphone/PG /home/llamaphone/PG/glfw/tests /home/llamaphone/PG/glfw/tests/CMakeFiles/events.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : glfw/tests/CMakeFiles/events.dir/depend

