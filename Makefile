OS:=$(shell uname -s)

all:
ifeq ($(OS), Linux)
	@echo linux not supported, please try on windows MinGW-W64 environment.
endif

ifeq ($(OS), MINGW64_NT-10.0-19045)
	@echo MINGW64_NT-10.0-19045
	g++ -o MMwGK1.exe main.cpp glad.c -I"include" -L"lib" -lfreeglut -lopengl32 -lglfw3dll
endif

clean:
	rm -rf MMwGK1.exe
test:
	./MMwGK1.exe

