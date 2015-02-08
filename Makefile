# Harrison Kiang
# 8-31-13
# 
# Makefile for CS225 mp1
#
EXE = mp1
OBJS = main.o png.o rgbapixel.o

COMPILER = g++
COMPILER_OPTS = -c -g -O0 -Wall -Werror
LINKER = g++
LINKER_OPTS = -lpng

all : $(EXE)

$(EXE) : $(OBJS)
	$(LINKER) $(OBJS) $(LINKER_OPTS) -o $(EXE)

main.o : main.cpp png.h rgbapixel.h
	$(COMPILER) $(COMPILER_OPTS) main.cpp

png.o : png.cpp png.h rgbapixel.h
	$(COMPILER) $(COMPILER_OPTS) png.cpp

rgbapixel.o : rgbapixel.cpp rgbapixel.h
	$(COMPILER) $(COMPILER_OPTS) rgbapixel.cpp

clean :
	-rm -f *.o $(EXE)

