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
include glfw/tests/CMakeFiles/threads.dir/depend.make

# Include the progress variables for this target.
include glfw/tests/CMakeFiles/threads.dir/progress.make

# Include the compile flags for this target's objects.
include glfw/tests/CMakeFiles/threads.dir/flags.make

glfw/tests/CMakeFiles/threads.dir/threads.c.o: glfw/tests/CMakeFiles/threads.dir/flags.make
glfw/tests/CMakeFiles/threads.dir/threads.c.o: glfw/tests/threads.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/llamaphone/Desktop/P2/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object glfw/tests/CMakeFiles/threads.dir/threads.c.o"
	cd /home/llamaphone/Desktop/P2/glfw/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/threads.dir/threads.c.o   -c /home/llamaphone/Desktop/P2/glfw/tests/threads.c

glfw/tests/CMakeFiles/threads.dir/threads.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/threads.dir/threads.c.i"
	cd /home/llamaphone/Desktop/P2/glfw/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/llamaphone/Desktop/P2/glfw/tests/threads.c > CMakeFiles/threads.dir/threads.c.i

glfw/tests/CMakeFiles/threads.dir/threads.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/threads.dir/threads.c.s"
	cd /home/llamaphone/Desktop/P2/glfw/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/llamaphone/Desktop/P2/glfw/tests/threads.c -o CMakeFiles/threads.dir/threads.c.s

glfw/tests/CMakeFiles/threads.dir/threads.c.o.requires:
.PHONY : glfw/tests/CMakeFiles/threads.dir/threads.c.o.requires

glfw/tests/CMakeFiles/threads.dir/threads.c.o.provides: glfw/tests/CMakeFiles/threads.dir/threads.c.o.requires
	$(MAKE) -f glfw/tests/CMakeFiles/threads.dir/build.make glfw/tests/CMakeFiles/threads.dir/threads.c.o.provides.build
.PHONY : glfw/tests/CMakeFiles/threads.dir/threads.c.o.provides

glfw/tests/CMakeFiles/threads.dir/threads.c.o.provides.build: glfw/tests/CMakeFiles/threads.dir/threads.c.o

glfw/tests/CMakeFiles/threads.dir/__/deps/tinycthread.c.o: glfw/tests/CMakeFiles/threads.dir/flags.make
glfw/tests/CMakeFiles/threads.dir/__/deps/tinycthread.c.o: glfw/deps/tinycthread.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/llamaphone/Desktop/P2/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object glfw/tests/CMakeFiles/threads.dir/__/deps/tinycthread.c.o"
	cd /home/llamaphone/Desktop/P2/glfw/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/threads.dir/__/deps/tinycthread.c.o   -c /home/llamaphone/Desktop/P2/glfw/deps/tinycthread.c

glfw/tests/CMakeFiles/threads.dir/__/deps/tinycthread.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/threads.dir/__/deps/tinycthread.c.i"
	cd /home/llamaphone/Desktop/P2/glfw/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/llamaphone/Desktop/P2/glfw/deps/tinycthread.c > CMakeFiles/threads.dir/__/deps/tinycthread.c.i

glfw/tests/CMakeFiles/threads.dir/__/deps/tinycthread.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/threads.dir/__/deps/tinycthread.c.s"
	cd /home/llamaphone/Desktop/P2/glfw/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/llamaphone/Desktop/P2/glfw/deps/tinycthread.c -o CMakeFiles/threads.dir/__/deps/tinycthread.c.s

glfw/tests/CMakeFiles/threads.dir/__/deps/tinycthread.c.o.requires:
.PHONY : glfw/tests/CMakeFiles/threads.dir/__/deps/tinycthread.c.o.requires

glfw/tests/CMakeFiles/threads.dir/__/deps/tinycthread.c.o.provides: glfw/tests/CMakeFiles/threads.dir/__/deps/tinycthread.c.o.requires
	$(MAKE) -f glfw/tests/CMakeFiles/threads.dir/build.make glfw/tests/CMakeFiles/threads.dir/__/deps/tinycthread.c.o.provides.build
.PHONY : glfw/tests/CMakeFiles/threads.dir/__/deps/tinycthread.c.o.provides

glfw/tests/CMakeFiles/threads.dir/__/deps/tinycthread.c.o.provides.build: glfw/tests/CMakeFiles/threads.dir/__/deps/tinycthread.c.o

glfw/tests/CMakeFiles/threads.dir/__/deps/glad.c.o: glfw/tests/CMakeFiles/threads.dir/flags.make
glfw/tests/CMakeFiles/threads.dir/__/deps/glad.c.o: glfw/deps/glad.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/llamaphone/Desktop/P2/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object glfw/tests/CMakeFiles/threads.dir/__/deps/glad.c.o"
	cd /home/llamaphone/Desktop/P2/glfw/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/threads.dir/__/deps/glad.c.o   -c /home/llamaphone/Desktop/P2/glfw/deps/glad.c

glfw/tests/CMakeFiles/threads.dir/__/deps/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/threads.dir/__/deps/glad.c.i"
	cd /home/llamaphone/Desktop/P2/glfw/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/llamaphone/Desktop/P2/glfw/deps/glad.c > CMakeFiles/threads.dir/__/deps/glad.c.i

glfw/tests/CMakeFiles/threads.dir/__/deps/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/threads.dir/__/deps/glad.c.s"
	cd /home/llamaphone/Desktop/P2/glfw/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/llamaphone/Desktop/P2/glfw/deps/glad.c -o CMakeFiles/threads.dir/__/deps/glad.c.s

glfw/tests/CMakeFiles/threads.dir/__/deps/glad.c.o.requires:
.PHONY : glfw/tests/CMakeFiles/threads.dir/__/deps/glad.c.o.requires

glfw/tests/CMakeFiles/threads.dir/__/deps/glad.c.o.provides: glfw/tests/CMakeFiles/threads.dir/__/deps/glad.c.o.requires
	$(MAKE) -f glfw/tests/CMakeFiles/threads.dir/build.make glfw/tests/CMakeFiles/threads.dir/__/deps/glad.c.o.provides.build
.PHONY : glfw/tests/CMakeFiles/threads.dir/__/deps/glad.c.o.provides

glfw/tests/CMakeFiles/threads.dir/__/deps/glad.c.o.provides.build: glfw/tests/CMakeFiles/threads.dir/__/deps/glad.c.o

# Object files for target threads
threads_OBJECTS = \
"CMakeFiles/threads.dir/threads.c.o" \
"CMakeFiles/threads.dir/__/deps/tinycthread.c.o" \
"CMakeFiles/threads.dir/__/deps/glad.c.o"

# External object files for target threads
threads_EXTERNAL_OBJECTS =

glfw/tests/threads: glfw/tests/CMakeFiles/threads.dir/threads.c.o
glfw/tests/threads: glfw/tests/CMakeFiles/threads.dir/__/deps/tinycthread.c.o
glfw/tests/threads: glfw/tests/CMakeFiles/threads.dir/__/deps/glad.c.o
glfw/tests/threads: glfw/tests/CMakeFiles/threads.dir/build.make
glfw/tests/threads: glfw/src/libglfw3.a
glfw/tests/threads: /usr/lib/x86_64-linux-gnu/librt.so
glfw/tests/threads: /usr/lib/x86_64-linux-gnu/libm.so
glfw/tests/threads: /usr/lib/x86_64-linux-gnu/libX11.so
glfw/tests/threads: /usr/lib/x86_64-linux-gnu/libXrandr.so
glfw/tests/threads: /usr/lib/x86_64-linux-gnu/libXinerama.so
glfw/tests/threads: /usr/lib/x86_64-linux-gnu/libXxf86vm.so
glfw/tests/threads: /usr/lib/x86_64-linux-gnu/libXcursor.so
glfw/tests/threads: glfw/tests/CMakeFiles/threads.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable threads"
	cd /home/llamaphone/Desktop/P2/glfw/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/threads.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
glfw/tests/CMakeFiles/threads.dir/build: glfw/tests/threads
.PHONY : glfw/tests/CMakeFiles/threads.dir/build

glfw/tests/CMakeFiles/threads.dir/requires: glfw/tests/CMakeFiles/threads.dir/threads.c.o.requires
glfw/tests/CMakeFiles/threads.dir/requires: glfw/tests/CMakeFiles/threads.dir/__/deps/tinycthread.c.o.requires
glfw/tests/CMakeFiles/threads.dir/requires: glfw/tests/CMakeFiles/threads.dir/__/deps/glad.c.o.requires
.PHONY : glfw/tests/CMakeFiles/threads.dir/requires

glfw/tests/CMakeFiles/threads.dir/clean:
	cd /home/llamaphone/Desktop/P2/glfw/tests && $(CMAKE_COMMAND) -P CMakeFiles/threads.dir/cmake_clean.cmake
.PHONY : glfw/tests/CMakeFiles/threads.dir/clean

glfw/tests/CMakeFiles/threads.dir/depend:
	cd /home/llamaphone/Desktop/P2 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/llamaphone/Desktop/P2 /home/llamaphone/Desktop/P2/glfw/tests /home/llamaphone/Desktop/P2 /home/llamaphone/Desktop/P2/glfw/tests /home/llamaphone/Desktop/P2/glfw/tests/CMakeFiles/threads.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : glfw/tests/CMakeFiles/threads.dir/depend

