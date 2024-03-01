# Continue with raylib

After successfully linking our [hello](https://github.com/gthvn1/hare_playground/tree/master/hello)
library with our hello in Hare we can now try to open a window using raylib.

- You will need to build [raylib](https://www.raylib.com/) to get the static library *libraylib.a*
- Copy *libraylib.a* into this folder
- We will port *core_basic_window.c* from [Raylib examples](https://www.raylib.com/examples.html) to Hare.
  - it is the most simple example but it will prove that we can use raylib whit Hare.
- and run `make`...

# And...

```
INFO: Initializing raylib 5.1-dev
INFO: Platform backend: DESKTOP (GLFW)
INFO: Supported raylib modules:
INFO:     > rcore:..... loaded (mandatory)
INFO:     > rlgl:...... loaded (mandatory)
INFO:     > rshapes:... loaded (optional)
INFO:     > rtextures:. loaded (optional)
INFO:     > rtext:..... loaded (optional)
INFO:     > rmodels:... loaded (optional)
INFO:     > raudio:.... loaded (optional)
INFO: DISPLAY: Device initialized successfully
INFO:     > Display size: 1920 x 1080
INFO:     > Screen size:  800 x 450
INFO:     > Render size:  800 x 450
INFO:     > Viewport offsets: 0, 0
INFO: GLAD: OpenGL extensions loaded successfully
INFO: GL: Supported extensions count: 227
INFO: GL: OpenGL device information:
INFO:     > Vendor:   Intel
INFO:     > Renderer: Mesa Intel(R) Xe Graphics (TGL GT2)
INFO:     > Version:  4.6 (Core Profile) Mesa 22.3.6
INFO:     > GLSL:     4.60
INFO: GL: VAO extension detected, VAO functions loaded successfully
INFO: GL: NPOT textures extension detected, full NPOT textures supported
INFO: GL: DXT compressed textures supported
INFO: GL: ETC2/EAC compressed textures supported
INFO: PLATFORM: DESKTOP (GLFW): Initialized successfully
INFO: TEXTURE: [ID 1] Texture loaded successfully (1x1 | R8G8B8A8 | 1 mipmaps)
INFO: TEXTURE: [ID 1] Default texture loaded successfully
INFO: SHADER: [ID 1] Vertex shader compiled successfully
INFO: SHADER: [ID 2] Fragment shader compiled successfully
INFO: SHADER: [ID 3] Program shader loaded successfully
INFO: SHADER: [ID 3] Default shader loaded successfully
INFO: RLGL: Render batch vertex buffers loaded successfully in RAM (CPU)
INFO: RLGL: Render batch vertex buffers loaded successfully in VRAM (GPU)
INFO: RLGL: Default OpenGL state initialized successfully
INFO: TEXTURE: [ID 2] Texture loaded successfully (128x128 | GRAY_ALPHA | 1 mipmaps)
INFO: FONT: Default font loaded successfully (224 glyphs)
INFO: TEXTURE: [ID 2] Unloaded texture data from VRAM (GPU)
INFO: SHADER: [ID 3] Default shader unloaded successfully
INFO: TEXTURE: [ID 1] Default texture unloaded successfully
INFO: Window closed successfully
```
