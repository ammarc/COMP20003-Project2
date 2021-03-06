CC=gcc
#add -O3 for testing
CPPFLAGS=-Wall  -Werror  -g
#CPPFLAGS=   -O3

SRC=src/utils.o src/priority_queue.o src/ai.o src/2048.o
TARGET=2048

all: $(SRC)
	$(CC) -o $(TARGET) $(SRC) $(CPPFLAGS)

clean:
	rm -f $(TARGET) src/*.o
