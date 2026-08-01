CC := cc
TARGET := libtui.a
SRCS := $(wildcard *.c)
OBJS := $(SRCS:.c=.o)
CFLAGS := -Wall -std=c23

$(TARGET): $(OBJS)
	ar rcs $@ $^

$(OBJS): %.o : %.c 
	$(CC) $(CFLAGS) $^ -c

clean:
	rm -f *.o $(TARGET)

