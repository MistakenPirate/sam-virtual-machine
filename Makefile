flags=-O2 -Wall -std=c2x
ldflags=-lbu

.PHONY: all clean

all: clean samvm

samvm: samvm.o
	cc $(flags) $^ -o $@ $(ldflags)

samvm.o: samvm.c samvm.h
	cc $(flags) -c $<

clean:
	rm -f *.o samvm