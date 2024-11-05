CC = arm-linux-gnueabihf-gcc
ARMFLAGS = -static -ggdb3 -g
LDLIBS = -lm

TARGET := contapari

DEPS:=  contapari.s main_contapari.c
$(TARGET):$(DEPS)
	$(CC) $^ -o $@ $(ARMFLAGS)

