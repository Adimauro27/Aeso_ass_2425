CC = arm-linux-gnueabihf-gcc
ARMFLAGS = -static -ggdb3 -g
LDLIBS = -lm

TARGET := 

DEPS:=  pippo.s main_pippo.c
$(TARGET):$(DEPS)
	$(CC) $^ -o $@ $(ARMFLAGS)

