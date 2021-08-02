all: hello.S
	as hello.S -o hello.o
	ld hello.o -e main -o hello

clean:
	rm hello hello.o
