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
CMAKE_SOURCE_DIR = /home/llamaphone/Desktop/P3

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/llamaphone/Desktop/P3

# Include any dependencies generated for this target.
include glfw/tests/CMakeFiles/cursor.dir/depend.make

# Include the progress variables for this target.
include glfw/tests/CMakeFiles/cursor.dir/progress.make

# Include the compile flags for this target's objects.
include glfw/tests/CMakeFiles/cursor.dir/flags.make

glfw/tests/CMakeFiles/cursor.dir/cursor.c.o: glfw/tests/CMakeFiles/cursor.dir/flags.make
glfw/tests/CMakeFiles/cursor.dir/cursor.c.o: glfw/tests/cursor.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/llamaphone/Desktop/P3/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object glfw/tests/CMakeFiles/cursor.dir/cursor.c.o"
	cd /home/llamaphone/Desktop/P3/glfw/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/cursor.dir/cursor.c.o   -c /home/llamaphone/Desktop/P3/glfw/tests/cursor.c

glfw/tests/CMakeFiles/cursor.dir/cursor.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cursor.dir/cursor.c.i"
	cd /home/llamaphone/Desktop/P3/glfw/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/llamaphone/Desktop/P3/glfw/tests/cursor.c > CMakeFiles/cursor.dir/cursor.c.i

glfw/tests/CMakeFiles/cursor.dir/cursor.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cursor.dir/cursor.c.s"
	cd /home/llamaphone/Desktop/P3/glfw/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/llamaphone/Desktop/P3/glfw/tests/cursor.c -o CMakeFiles/cursor.dir/cursor.c.s

glfw/tests/CMakeFiles/cursor.dir/cursor.c.o.requires:
.PHONY : glfw/tests/CMakeFiles/cursor.dir/cursor.c.o.requires

glfw/tests/CMakeFiles/cursor.dir/cursor.c.o.provides: glfw/tests/CMakeFiles/cursor.dir/cursor.c.o.requires
	$(MAKE) -f glfw/tests/CMakeFiles/cursor.dir/build.make glfw/tests/CMakeFiles/cursor.dir/cursor.c.o.provides.build
.PHONY : glfw/tests/CMakeFiles/cursor.dir/cursor.c.o.provides

glfw/tests/CMakeFiles/cursor.dir/cursor.c.o.provides.build: glfw/tests/CMakeFiles/cursor.dir/cursor.c.o

glfw/tests/CMakeFiles/cursor.dir/__/deps/glad.c.o: glfw/tests/CMakeFiles/cursor.dir/flags.make
glfw/tests/CMakeFiles/cursor.dir/__/deps/glad.c.o: glfw/deps/glad.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/llamaphone/Desktop/P3/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object glfw/tests/CMakeFiles/cursor.dir/__/deps/glad.c.o"
	cd /home/llamaphone/Desktop/P3/glfw/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/cursor.dir/__/deps/glad.c.o   -c /home/llamaphone/Desktop/P3/glfw/deps/glad.c

glfw/tests/CMakeFiles/cursor.dir/__/deps/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cursor.dir/__/deps/glad.c.i"
	cd /home/llamaphone/Desktop/P3/glfw/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/llamaphone/Desktop/P3/glfw/deps/glad.c > CMakeFiles/cursor.dir/__/deps/glad.c.i

glfw/tests/CMakeFiles/cursor.dir/__/deps/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cursor.dir/__/deps/glad.c.s"
	cd /home/llamaphone/Desktop/P3/glfw/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/llamaphone/Desktop/P3/glfw/deps/glad.c -o CMakeFiles/cursor.dir/__/deps/glad.c.s

glfw/tests/CMakeFiles/cursor.dir/__/deps/glad.c.o.requires:
.PHONY : glfw/tests/CMakeFiles/cursor.dir/__/deps/glad.c.o.requires

glfw/tests/CMakeFiles/cursor.dir/__/deps/glad.c.o.provides: glfw/tests/CMakeFiles/cursor.dir/__/deps/glad.c.o.requires
	$(MAKE) -f glfw/tests/CMakeFiles/cursor.dir/build.make glfw/tests/CMakeFiles/cursor.dir/__/deps/glad.c.o.provides.build
.PHONY : glfw/tests/CMakeFiles/cursor.dir/__/deps/glad.c.o.provides

glfw/tests/CMakeFiles/cursor.dir/__/deps/glad.c.o.provides.build: glfw/tests/CMakeFiles/cursor.dir/__/deps/glad.c.o

# Object files for target cursor
cursor_OBJECTS = \
"CMakeFiles/cursor.dir/cursor.c.o" \
"CMakeFiles/cursor.dir/__/deps/glad.c.o"

# External object files for target cursor
cursor_EXTERNAL_OBJECTS =

glfw/tests/cursor: glfw/tests/CMakeFiles/cursor.dir/cursor.c.o
glfw/tests/cursor: glfw/tests/CMakeFiles/cursor.dir/__/deps/glad.c.o
glfw/tests/cursor: glfw/tests/CMakeFiles/cursor.dir/build.make
glfw/tests/cursor: glfw/src/libglfw3.a
glfw/tests/cursor: /usr/lib/x86_64-linux-gnu/librt.so
glfw/tests/cursor: /usr/lib/x86_64-linux-gnu/libm.so
glfw/tests/cursor: /usr/lib/x86_64-linux-gnu/libX11.so
glfw/tests/cursor: /usr/lib/x86_64-linux-gnu/libXrandr.so
glfw/tests/cursor: /usr/lib/x86_64-linux-gnu/libXinerama.so
glfw/tests/cursor: /usr/lib/x86_64-linux-gnu/libXxf86vm.so
glfw/tests/cursor: /usr/lib/x86_64-linux-gnu/libXcursor.so
glfw/tests/cursor: glfw/tests/CMakeFiles/cursor.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable cursor"
	cd /home/llamaphone/Desktop/P3/glfw/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cursor.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
glfw/tests/CMakeFiles/cursor.dir/build: glfw/tests/cursor
.PHONY : glfw/tests/CMakeFiles/cursor.dir/build

glfw/tests/CMakeFiles/cursor.dir/requires: glfw/tests/CMakeFiles/cursor.dir/cursor.c.o.requires
glfw/tests/CMakeFiles/cursor.dir/requires: glfw/tests/CMakeFiles/cursor.dir/__/deps/glad.c.o.requires
.PHONY : glfw/tests/CMakeFiles/cursor.dir/requires

glfw/tests/CMakeFiles/cursor.dir/clean:
	cd /home/llamaphone/Desktop/P3/glfw/tests && $(CMAKE_COMMAND) -P CMakeFiles/cursor.dir/cmake_clean.cmake
.PHONY : glfw/tests/CMakeFiles/cursor.dir/clean

glfw/tests/CMakeFiles/cursor.dir/depend:
	cd /home/llamaphone/Desktop/P3 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/llamaphone/Desktop/P3 /home/llamaphone/Desktop/P3/glfw/tests /home/llamaphone/Desktop/P3 /home/llamaphone/Desktop/P3/glfw/tests /home/llamaphone/Desktop/P3/glfw/tests/CMakeFiles/cursor.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : glfw/tests/CMakeFiles/cursor.dir/depend

