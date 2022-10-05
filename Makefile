# global options
Q=@

INCDIR := /usr/local/include
LIBDIR := /usr/local/lib

# c options
CC      :=    gcc
CFLAGS  :=    -Wall -Werror -Wextra -pedantic -std=c99

# ar options
AR      :=    ar
ARFLAGS :=    -rcs

# target options
SRCS    :=     $(wildcard *.c)
HDRS    :=     $(SRCS:.c=.h)
OBJS    :=     $(SRCS:.c=.o)

TARGET  :=    liblclog.a
TESTDIR :=    test/

$(TARGET): $(OBJS)
	$Q$(AR) $(ARFLAGS) $@ $^

%.o: %.c
	$Q$(CC) $(CFLAGS) -c -o $@ $<

.PHONY: install
install: $(TARGET) $(HDRS)
	cp $(TARGET) $(LIBDIR)
	cp $(HDRS) $(INCDIR)

.PHONY: test
test: $(TARGET)
	$Qmake --no-print-directory -C test run

.PHONY: clean
clean:
	$Qmake --no-print-directory -C test clean
	$Qrm -f *.a *.o
