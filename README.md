## Intro

- The first goal is to play with [Hare](https://harelang.org/)
- The second is to find something cool to do... why not emulate chip8
- To manage framebuffer we will probably use [raylib](https://www.raylib.com/)
  - It is a single libary, easy to build, that we will link with our code

So let's start...

## Steps

- [x] link a C library with Hare code. Start with simple `hello`
  - [Hello step](https://github.com/gthvn1/hare_playground/tree/master/hello)
- [x] link with raylib and create a window
  - porting *core_basic_window.c* from [Raylib examples](https://www.raylib.com/examples.html) to Hare to validate that it works.
  - [Raylib step](https://github.com/gthvn1/hare_playground/tree/master/raylib)
- [ ] start implementing the emulator
- ... (will see for next steps)
