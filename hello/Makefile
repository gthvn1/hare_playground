all: main

hello.o: hello.c
	gcc -c -Wall -Werror -Wextra hello.c

libhello.a: hello.o
	ar -rcs libhello.a hello.o

main: main.c libhello.a
	gcc main.c -L. -lhello -o main

clean:
	rm -f libhello.a hello.o main
