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
include glfw/tests/CMakeFiles/timeout.dir/depend.make

# Include the progress variables for this target.
include glfw/tests/CMakeFiles/timeout.dir/progress.make

# Include the compile flags for this target's objects.
include glfw/tests/CMakeFiles/timeout.dir/flags.make

glfw/tests/CMakeFiles/timeout.dir/timeout.c.o: glfw/tests/CMakeFiles/timeout.dir/flags.make
glfw/tests/CMakeFiles/timeout.dir/timeout.c.o: glfw/tests/timeout.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/llamaphone/PG/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object glfw/tests/CMakeFiles/timeout.dir/timeout.c.o"
	cd /home/llamaphone/PG/glfw/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/timeout.dir/timeout.c.o   -c /home/llamaphone/PG/glfw/tests/timeout.c

glfw/tests/CMakeFiles/timeout.dir/timeout.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/timeout.dir/timeout.c.i"
	cd /home/llamaphone/PG/glfw/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/llamaphone/PG/glfw/tests/timeout.c > CMakeFiles/timeout.dir/timeout.c.i

glfw/tests/CMakeFiles/timeout.dir/timeout.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/timeout.dir/timeout.c.s"
	cd /home/llamaphone/PG/glfw/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/llamaphone/PG/glfw/tests/timeout.c -o CMakeFiles/timeout.dir/timeout.c.s

glfw/tests/CMakeFiles/timeout.dir/timeout.c.o.requires:
.PHONY : glfw/tests/CMakeFiles/timeout.dir/timeout.c.o.requires

glfw/tests/CMakeFiles/timeout.dir/timeout.c.o.provides: glfw/tests/CMakeFiles/timeout.dir/timeout.c.o.requires
	$(MAKE) -f glfw/tests/CMakeFiles/timeout.dir/build.make glfw/tests/CMakeFiles/timeout.dir/timeout.c.o.provides.build
.PHONY : glfw/tests/CMakeFiles/timeout.dir/timeout.c.o.provides

glfw/tests/CMakeFiles/timeout.dir/timeout.c.o.provides.build: glfw/tests/CMakeFiles/timeout.dir/timeout.c.o

glfw/tests/CMakeFiles/timeout.dir/__/deps/glad.c.o: glfw/tests/CMakeFiles/timeout.dir/flags.make
glfw/tests/CMakeFiles/timeout.dir/__/deps/glad.c.o: glfw/deps/glad.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/llamaphone/PG/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object glfw/tests/CMakeFiles/timeout.dir/__/deps/glad.c.o"
	cd /home/llamaphone/PG/glfw/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/timeout.dir/__/deps/glad.c.o   -c /home/llamaphone/PG/glfw/deps/glad.c

glfw/tests/CMakeFiles/timeout.dir/__/deps/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/timeout.dir/__/deps/glad.c.i"
	cd /home/llamaphone/PG/glfw/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/llamaphone/PG/glfw/deps/glad.c > CMakeFiles/timeout.dir/__/deps/glad.c.i

glfw/tests/CMakeFiles/timeout.dir/__/deps/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/timeout.dir/__/deps/glad.c.s"
	cd /home/llamaphone/PG/glfw/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/llamaphone/PG/glfw/deps/glad.c -o CMakeFiles/timeout.dir/__/deps/glad.c.s

glfw/tests/CMakeFiles/timeout.dir/__/deps/glad.c.o.requires:
.PHONY : glfw/tests/CMakeFiles/timeout.dir/__/deps/glad.c.o.requires

glfw/tests/CMakeFiles/timeout.dir/__/deps/glad.c.o.provides: glfw/tests/CMakeFiles/timeout.dir/__/deps/glad.c.o.requires
	$(MAKE) -f glfw/tests/CMakeFiles/timeout.dir/build.make glfw/tests/CMakeFiles/timeout.dir/__/deps/glad.c.o.provides.build
.PHONY : glfw/tests/CMakeFiles/timeout.dir/__/deps/glad.c.o.provides

glfw/tests/CMakeFiles/timeout.dir/__/deps/glad.c.o.provides.build: glfw/tests/CMakeFiles/timeout.dir/__/deps/glad.c.o

# Object files for target timeout
timeout_OBJECTS = \
"CMakeFiles/timeout.dir/timeout.c.o" \
"CMakeFiles/timeout.dir/__/deps/glad.c.o"

# External object files for target timeout
timeout_EXTERNAL_OBJECTS =

glfw/tests/timeout: glfw/tests/CMakeFiles/timeout.dir/timeout.c.o
glfw/tests/timeout: glfw/tests/CMakeFiles/timeout.dir/__/deps/glad.c.o
glfw/tests/timeout: glfw/tests/CMakeFiles/timeout.dir/build.make
glfw/tests/timeout: glfw/src/libglfw3.a
glfw/tests/timeout: /usr/lib/x86_64-linux-gnu/librt.so
glfw/tests/timeout: /usr/lib/x86_64-linux-gnu/libm.so
glfw/tests/timeout: /usr/lib/x86_64-linux-gnu/libX11.so
glfw/tests/timeout: /usr/lib/x86_64-linux-gnu/libXrandr.so
glfw/tests/timeout: /usr/lib/x86_64-linux-gnu/libXinerama.so
glfw/tests/timeout: /usr/lib/x86_64-linux-gnu/libXxf86vm.so
glfw/tests/timeout: /usr/lib/x86_64-linux-gnu/libXcursor.so
glfw/tests/timeout: glfw/tests/CMakeFiles/timeout.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable timeout"
	cd /home/llamaphone/PG/glfw/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/timeout.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
glfw/tests/CMakeFiles/timeout.dir/build: glfw/tests/timeout
.PHONY : glfw/tests/CMakeFiles/timeout.dir/build

glfw/tests/CMakeFiles/timeout.dir/requires: glfw/tests/CMakeFiles/timeout.dir/timeout.c.o.requires
glfw/tests/CMakeFiles/timeout.dir/requires: glfw/tests/CMakeFiles/timeout.dir/__/deps/glad.c.o.requires
.PHONY : glfw/tests/CMakeFiles/timeout.dir/requires

glfw/tests/CMakeFiles/timeout.dir/clean:
	cd /home/llamaphone/PG/glfw/tests && $(CMAKE_COMMAND) -P CMakeFiles/timeout.dir/cmake_clean.cmake
.PHONY : glfw/tests/CMakeFiles/timeout.dir/clean

glfw/tests/CMakeFiles/timeout.dir/depend:
	cd /home/llamaphone/PG && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/llamaphone/PG /home/llamaphone/PG/glfw/tests /home/llamaphone/PG /home/llamaphone/PG/glfw/tests /home/llamaphone/PG/glfw/tests/CMakeFiles/timeout.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : glfw/tests/CMakeFiles/timeout.dir/depend

