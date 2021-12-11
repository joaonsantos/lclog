# global options
Q=@

# c options
CC=gcc
CFLAGS=-Wall -Wextra -std=c99 -I.
SRC=lclog.c
DEPS=liblclog.h
OBJS=lclog.o
AR=ar
ARFLAGS=-rcs
TARGET=liblclog.a

$(TARGET): $(OBJS)
	$(AR) $(ARFLAGS) $@ $^

$(OBJS): $(SRC) $(DEPS)
	$(CC) $(CFLAGS) -c -o $@ $<

.PHONY: clean
clean:
	rm -f *.a *.o