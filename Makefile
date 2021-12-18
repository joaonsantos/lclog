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

# test options
TTARGET=test/

$(TARGET): $(OBJS)
	$(AR) $(ARFLAGS) $@ $^
	cp $(DEPS) $(TARGET) $(TTARGET)

$(OBJS): $(SRC) $(DEPS)
	$(CC) $(CFLAGS) -c -o $@ $<

.PHONY: clean
clean:
	rm -f *.a *.o
