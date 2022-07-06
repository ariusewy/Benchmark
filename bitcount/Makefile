include ../../../../Makefile.common

APPNAME="example"
COMPILATION_SCENARIO="default"

# In Makefile.common.commands, the files *.c are considered C and the files *.cc and *.cpp are considered C++.
SOURCES_C=dhry_1.c  dhry_2.c
APP=$(basename `pwd`)
# All object files.
SOURCES_BC=${SOURCES_C:.c=.bc}
SOURCES_BBC=$(wildcard *.bc)
# Source language to use for final code generation. It has to be C++ if any C++ source were used.
LANGUAGE=C++

# Additional application specific flags for compilation and linking.
APPADDCOMPILEFLAGS=
APPADDLDFLAGS=

# Where to install the executables (*.nls will be analysis files)
INSTALL_FOLDER=../../../../profile/$(APP)

include ../../../Makefile.common.commands
export AddJSONData=scalingInfo.json

# Command to test the compilation
test: exe-clang
	./exe-clang 


