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
CMAKE_SOURCE_DIR = /home/llamaphone/Desktop/P2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/llamaphone/Desktop/P2

# Include any dependencies generated for this target.
include glfw/tests/CMakeFiles/clipboard.dir/depend.make

# Include the progress variables for this target.
include glfw/tests/CMakeFiles/clipboard.dir/progress.make

# Include the compile flags for this target's objects.
include glfw/tests/CMakeFiles/clipboard.dir/flags.make

glfw/tests/CMakeFiles/clipboard.dir/clipboard.c.o: glfw/tests/CMakeFiles/clipboard.dir/flags.make
glfw/tests/CMakeFiles/clipboard.dir/clipboard.c.o: glfw/tests/clipboard.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/llamaphone/Desktop/P2/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object glfw/tests/CMakeFiles/clipboard.dir/clipboard.c.o"
	cd /home/llamaphone/Desktop/P2/glfw/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/clipboard.dir/clipboard.c.o   -c /home/llamaphone/Desktop/P2/glfw/tests/clipboard.c

glfw/tests/CMakeFiles/clipboard.dir/clipboard.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/clipboard.dir/clipboard.c.i"
	cd /home/llamaphone/Desktop/P2/glfw/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/llamaphone/Desktop/P2/glfw/tests/clipboard.c > CMakeFiles/clipboard.dir/clipboard.c.i

glfw/tests/CMakeFiles/clipboard.dir/clipboard.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/clipboard.dir/clipboard.c.s"
	cd /home/llamaphone/Desktop/P2/glfw/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/llamaphone/Desktop/P2/glfw/tests/clipboard.c -o CMakeFiles/clipboard.dir/clipboard.c.s

glfw/tests/CMakeFiles/clipboard.dir/clipboard.c.o.requires:
.PHONY : glfw/tests/CMakeFiles/clipboard.dir/clipboard.c.o.requires

glfw/tests/CMakeFiles/clipboard.dir/clipboard.c.o.provides: glfw/tests/CMakeFiles/clipboard.dir/clipboard.c.o.requires
	$(MAKE) -f glfw/tests/CMakeFiles/clipboard.dir/build.make glfw/tests/CMakeFiles/clipboard.dir/clipboard.c.o.provides.build
.PHONY : glfw/tests/CMakeFiles/clipboard.dir/clipboard.c.o.provides

glfw/tests/CMakeFiles/clipboard.dir/clipboard.c.o.provides.build: glfw/tests/CMakeFiles/clipboard.dir/clipboard.c.o

glfw/tests/CMakeFiles/clipboard.dir/__/deps/getopt.c.o: glfw/tests/CMakeFiles/clipboard.dir/flags.make
glfw/tests/CMakeFiles/clipboard.dir/__/deps/getopt.c.o: glfw/deps/getopt.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/llamaphone/Desktop/P2/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object glfw/tests/CMakeFiles/clipboard.dir/__/deps/getopt.c.o"
	cd /home/llamaphone/Desktop/P2/glfw/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/clipboard.dir/__/deps/getopt.c.o   -c /home/llamaphone/Desktop/P2/glfw/deps/getopt.c

glfw/tests/CMakeFiles/clipboard.dir/__/deps/getopt.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/clipboard.dir/__/deps/getopt.c.i"
	cd /home/llamaphone/Desktop/P2/glfw/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/llamaphone/Desktop/P2/glfw/deps/getopt.c > CMakeFiles/clipboard.dir/__/deps/getopt.c.i

glfw/tests/CMakeFiles/clipboard.dir/__/deps/getopt.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/clipboard.dir/__/deps/getopt.c.s"
	cd /home/llamaphone/Desktop/P2/glfw/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/llamaphone/Desktop/P2/glfw/deps/getopt.c -o CMakeFiles/clipboard.dir/__/deps/getopt.c.s

glfw/tests/CMakeFiles/clipboard.dir/__/deps/getopt.c.o.requires:
.PHONY : glfw/tests/CMakeFiles/clipboard.dir/__/deps/getopt.c.o.requires

glfw/tests/CMakeFiles/clipboard.dir/__/deps/getopt.c.o.provides: glfw/tests/CMakeFiles/clipboard.dir/__/deps/getopt.c.o.requires
	$(MAKE) -f glfw/tests/CMakeFiles/clipboard.dir/build.make glfw/tests/CMakeFiles/clipboard.dir/__/deps/getopt.c.o.provides.build
.PHONY : glfw/tests/CMakeFiles/clipboard.dir/__/deps/getopt.c.o.provides

glfw/tests/CMakeFiles/clipboard.dir/__/deps/getopt.c.o.provides.build: glfw/tests/CMakeFiles/clipboard.dir/__/deps/getopt.c.o

glfw/tests/CMakeFiles/clipboard.dir/__/deps/glad.c.o: glfw/tests/CMakeFiles/clipboard.dir/flags.make
glfw/tests/CMakeFiles/clipboard.dir/__/deps/glad.c.o: glfw/deps/glad.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/llamaphone/Desktop/P2/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object glfw/tests/CMakeFiles/clipboard.dir/__/deps/glad.c.o"
	cd /home/llamaphone/Desktop/P2/glfw/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/clipboard.dir/__/deps/glad.c.o   -c /home/llamaphone/Desktop/P2/glfw/deps/glad.c

glfw/tests/CMakeFiles/clipboard.dir/__/deps/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/clipboard.dir/__/deps/glad.c.i"
	cd /home/llamaphone/Desktop/P2/glfw/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/llamaphone/Desktop/P2/glfw/deps/glad.c > CMakeFiles/clipboard.dir/__/deps/glad.c.i

glfw/tests/CMakeFiles/clipboard.dir/__/deps/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/clipboard.dir/__/deps/glad.c.s"
	cd /home/llamaphone/Desktop/P2/glfw/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/llamaphone/Desktop/P2/glfw/deps/glad.c -o CMakeFiles/clipboard.dir/__/deps/glad.c.s

glfw/tests/CMakeFiles/clipboard.dir/__/deps/glad.c.o.requires:
.PHONY : glfw/tests/CMakeFiles/clipboard.dir/__/deps/glad.c.o.requires

glfw/tests/CMakeFiles/clipboard.dir/__/deps/glad.c.o.provides: glfw/tests/CMakeFiles/clipboard.dir/__/deps/glad.c.o.requires
	$(MAKE) -f glfw/tests/CMakeFiles/clipboard.dir/build.make glfw/tests/CMakeFiles/clipboard.dir/__/deps/glad.c.o.provides.build
.PHONY : glfw/tests/CMakeFiles/clipboard.dir/__/deps/glad.c.o.provides

glfw/tests/CMakeFiles/clipboard.dir/__/deps/glad.c.o.provides.build: glfw/tests/CMakeFiles/clipboard.dir/__/deps/glad.c.o

# Object files for target clipboard
clipboard_OBJECTS = \
"CMakeFiles/clipboard.dir/clipboard.c.o" \
"CMakeFiles/clipboard.dir/__/deps/getopt.c.o" \
"CMakeFiles/clipboard.dir/__/deps/glad.c.o"

# External object files for target clipboard
clipboard_EXTERNAL_OBJECTS =

glfw/tests/clipboard: glfw/tests/CMakeFiles/clipboard.dir/clipboard.c.o
glfw/tests/clipboard: glfw/tests/CMakeFiles/clipboard.dir/__/deps/getopt.c.o
glfw/tests/clipboard: glfw/tests/CMakeFiles/clipboard.dir/__/deps/glad.c.o
glfw/tests/clipboard: glfw/tests/CMakeFiles/clipboard.dir/build.make
glfw/tests/clipboard: glfw/src/libglfw3.a
glfw/tests/clipboard: /usr/lib/x86_64-linux-gnu/librt.so
glfw/tests/clipboard: /usr/lib/x86_64-linux-gnu/libm.so
glfw/tests/clipboard: /usr/lib/x86_64-linux-gnu/libX11.so
glfw/tests/clipboard: /usr/lib/x86_64-linux-gnu/libXrandr.so
glfw/tests/clipboard: /usr/lib/x86_64-linux-gnu/libXinerama.so
glfw/tests/clipboard: /usr/lib/x86_64-linux-gnu/libXxf86vm.so
glfw/tests/clipboard: /usr/lib/x86_64-linux-gnu/libXcursor.so
glfw/tests/clipboard: glfw/tests/CMakeFiles/clipboard.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable clipboard"
	cd /home/llamaphone/Desktop/P2/glfw/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/clipboard.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
glfw/tests/CMakeFiles/clipboard.dir/build: glfw/tests/clipboard
.PHONY : glfw/tests/CMakeFiles/clipboard.dir/build

glfw/tests/CMakeFiles/clipboard.dir/requires: glfw/tests/CMakeFiles/clipboard.dir/clipboard.c.o.requires
glfw/tests/CMakeFiles/clipboard.dir/requires: glfw/tests/CMakeFiles/clipboard.dir/__/deps/getopt.c.o.requires
glfw/tests/CMakeFiles/clipboard.dir/requires: glfw/tests/CMakeFiles/clipboard.dir/__/deps/glad.c.o.requires
.PHONY : glfw/tests/CMakeFiles/clipboard.dir/requires

glfw/tests/CMakeFiles/clipboard.dir/clean:
	cd /home/llamaphone/Desktop/P2/glfw/tests && $(CMAKE_COMMAND) -P CMakeFiles/clipboard.dir/cmake_clean.cmake
.PHONY : glfw/tests/CMakeFiles/clipboard.dir/clean

glfw/tests/CMakeFiles/clipboard.dir/depend:
	cd /home/llamaphone/Desktop/P2 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/llamaphone/Desktop/P2 /home/llamaphone/Desktop/P2/glfw/tests /home/llamaphone/Desktop/P2 /home/llamaphone/Desktop/P2/glfw/tests /home/llamaphone/Desktop/P2/glfw/tests/CMakeFiles/clipboard.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : glfw/tests/CMakeFiles/clipboard.dir/depend

