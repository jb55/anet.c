
CC ?= cc

SRC  = $(wildcard src/*.c)
OBJS = $(SRC:.c=.o)

CFLAGS  = -std=c99 -Wall -Wno-unused-function -U__STRICT_ANSI__

all: $(OBJS)

%.o: %.c
	$(CC) $< -c -o $@ $(CFLAGS)

clean:
	$(foreach o, $(OBJS), rm -f $(o);)
	rm -f $(OBJS)

.PHONY: all clean
