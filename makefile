CC = arm-linux-gnueabihf-gcc
ARMFALGS = -static -ggdb3
LDLIBS = -lm

TARGET := 

DEPS:= 
$(TARGET):$(DEPS)
	$(CC) $^ -o $@ $(ARMIFLAGS)

