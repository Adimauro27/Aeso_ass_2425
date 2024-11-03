CC = arm-linux-gnueabihf-gcc
ARMFLAGS = -static -ggdb3 -g
LDLIBS = -lm

TARGET := sum_ar_array

DEPS:=  sum_array.s main_sum_ar_array.c
$(TARGET):$(DEPS)
	$(CC) $^ -o $@ $(ARMFLAGS)

