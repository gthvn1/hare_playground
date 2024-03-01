# Start with simple hello

## First build lib and link it to C
- Build simple C lib
- Build main.c that uses this simple library

## Same but link with hare code
- Try to call the symbol from [Hare](https://harelang.org/)

## Now link from hare

- `cd hello_hare_proj/`
- You can copy libraries like `libhello.a` into *hello_hare_proj/*
    - *Note*: To build you need to build upper level to generate the **libhello.a**
- You tree should looks like
```
.
├── hello
│   └── greeting.ha
├── libhello.a
├── main.ha
└── Makefile
```

## Everything put toghether

- so the workflow is something like:

```
$ cd hello/
$ make
gcc -c -Wall -Werror -Wextra hello.c
ar -rcs libhello.a hello.o
gcc main.c -L. -lhello -o main
$ cp libhello.a hello_hare_proj/
$ cd hello_hare_proj/
$ make
hare build -L. -lhello -o main main.ha
$ ./main
Hello Mister Spock !
```
