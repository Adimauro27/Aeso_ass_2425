CC = arm-linux-gnueabihf-gcc
ARMFLAGS = -static -ggdb3 
LDLIBS = -lm

TARGET := 

DEPS:=
$(TARGET):$(DEPS)
	$(CC) $^ -o $@ $(ARMFLAGS)


max : max.s main_max.c
	$(CC) $^ -o $@ $(ARMFLAGS)

maius : maius.s main_maius.c
	$(CC) $^ -o $@ $(ARMFLAGS)

contapari : contapari.s main_contapari.c
	$(CC) $^ -o $@ $(ARMFLAGS)