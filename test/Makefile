# global options
Q=@

# c options
CC=gcc
CFLAGS=-Wall -Wextra -std=c99 -I.
LIBS=liblclog.a

.PHONY: run
run: test
	./$<

%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<

test: test.o $(LIBS)
	$(CC) $(CFLAGS) -o test $^

.PHONY: clean
clean:
	rm -f *.o
