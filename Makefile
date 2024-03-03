CFLAGS=-std=c11 -g -fno-common

CC=gcc

budv: main.o
	$(CC) -o budv $(CFLAGS) main.o

test: budv
	./test.sh

clean:
	rm -f budv *.o *.s tmp* a.out

.PHONY: test clean
