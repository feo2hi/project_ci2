SRC = c2_component.c
OBJ = $(SRC:.c=.o)
OUT = libc2.a
INCLUDES = -I.
CCFLAGS = -g
CCC = gcc
LDFLAGS = -g

.SUFFIXES: .c

default: $(OUT)

.cpp.o:
	$(CCC) $(INCLUDES) $(CCFLAGS) $(EXTRACCFLAGS) -c

$(OUT): $(OBJ)
	ar rcs $(OUT) $(OBJ)

clean:
	rm -f $(OBJ) $(OUT)
