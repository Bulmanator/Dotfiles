C = clang
CXX = clang++

COMPILER := -Wno-switch -Wno-undefined-internal -Wno-writable-strings
DEFINES  := -D$(UPPER_PROJECT)_INTERNAL -D$(UPPER_PROJECT)_SLOW

ifeq ($(OS), Windows_NT)
	PLATFORM  = Win
	LINKER    = /link /LIBPATH:..\libs\SDL2\lib SDL2d.lib opengl32.lib kernel32.lib
	COMPILER += -imsvc ..\libs\SDL2\include -imsvc ..\libs\STB /MDd /MTd /Zi /Od --driver-mode=cl /Fe$(PROJECT).exe
	DEFINES  += -D$(UPPER_PROJECT)_WIN
else
	SHELL  = /bin/bash
	UNAME := $(shell uname -s)
	ifeq ($(UNAME), Linux)
		PLATFORM  = Linux
		LINKER    = -L ../libs/SDL2/lib -lGL -lSDL2
		COMPILER += -ggdb -O0 -isystem ../libs/STB -isystem ../libs/SDL2/include -o $(PROJECT) 
		DEFINES  += -D$(UPPER_PROJECT)_LINUX
	else ifeq ($(UNAME), Darwin)
		# @Todo: macOS build
	endif
endif

.SILENT all: game

game:
	pushd "$(BUILD_DIR)" && $(CXX) $(COMPILER) $(DEFINES) ../code/$(PLATFORM)_$(PROJECT).cpp $(LINKER)
