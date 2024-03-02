## Intro

- The first goal is to play with [Hare](https://harelang.org/)
- The second is to find something cool to do... why not emulate chip8
- To manage framebuffer we will probably use [raylib](https://www.raylib.com/)
  - It is a single libary, easy to build, that we will link with our code

So let's start...

## Links

- [Chip8](https://en.wikipedia.org/wiki/CHIP-8)

## Steps

- [x] link a C library with Hare code. Start with simple `hello`
  - [hello/](https://git.sr.ht/~gthvn1/harechip8/tree/master/item/hello)
- [x] link with raylib and create a window
  - porting *core_basic_window.c* from [Raylib examples](https://www.raylib.com/examples.html) to Hare to validate that it works.
  - [raylib/](https://git.sr.ht/~gthvn1/harechip8/tree/master/item/raylib)
- [ ] start implementing the emulator
  - [emulator/](https://git.sr.ht/~gthvn1/harechip8/tree/master/item/emulator)
  - [x] read chip8 binaries from ROM and dump instructions
  - [ ] execute some instructions to run IBM logo
  - [ ] implement other instructions
