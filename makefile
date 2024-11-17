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

vect_scalar : vect_scalar.s main_vect_scalar.c
	$(CC) $^ -o $@ $(ARMFLAGS)

parabola : parabola.s main_parabola.c
	$(CC) $^ -o $@ $(ARMFLAGS)

r_bin : r_bin.s main_r_bin.c
	$(CC) $^ -o $@ $(ARMFLAGS)

conta_car : conta_car.s main_conta_car.c
	$(CC) $^ -o $@ $(ARMFLAGS)

lis_count_elem : lis_count_elem.s main_tutto.c
	$(CC) $^ -o $@ $(ARMFLAGS)

longest : longest.s main_tutto.c
	$(CC) $^ -o $@ $(ARMFLAGS)