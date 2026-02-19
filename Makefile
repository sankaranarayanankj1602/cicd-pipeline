# Compiler and flags
CC = gcc
CFLAGS = -Wall -g

# Target executable
TARGET = first_job


# Compile main.c
main.o: sample_file.c
	$(CC) $(CFLAGS) -c sample_file.c

# Clean up build files
clean:
	rm -f *.o $(TARGET)
