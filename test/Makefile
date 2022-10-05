# global options
Q=@

# c options
CC       :=    gcc
CFLAGS   :=    -Wall -Werror -Wextra -pedantic -std=c99
LINKS    :=    -L.. -llclog
INCLUDES :=    -I..

SRCS     :=    $(wildcard *.c)
TESTS    :=    $(SRCS:.c=.test)

.PHONY: run
run: $(TESTS)
	$Qrm -f *.o *.test

%.test: %.c
	$Q$(CC) $(CFLAGS) -o $@ $< $(LINKS) $(INCLUDES)
	@./$@ > /dev/null || echo "$@ failed"

.PHONY: clean
clean:
	$Qrm -f *.o *.test
