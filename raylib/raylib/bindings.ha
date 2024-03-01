use fmt;
use types::c;

export type color = struct {
	r: u8,
	g: u8,
	b: u8,
	a: u8,
};

export const RAYWHITE = color {r=245, g=245, b=245, a=255};
export const LIGHTGRAY = color {r=200, g=200, b=200, a=255};

export fn init_window(w: int, h: int, t: str) void = {
	InitWindow(w,h, c::fromstr(t));
};

@symbol("InitWindow") fn InitWindow(width: int, height: int, title: *const c::char) void;

export @symbol("CloseWindow") fn close_window() void;
export @symbol("WindowShouldClose") fn window_should_close() bool;
export @symbol("BeginDrawing") fn begin_drawing() void;
export @symbol("EndDrawing") fn end_drawing() void;
export @symbol("ClearBackground") fn clear_background(c: color) void;

export fn draw_text(text: str, x: int, y: int, fontSize: int, c: color) void = {
	DrawText(c::fromstr(text), x, y, fontSize, c);
};
@symbol("DrawText") fn DrawText(text: *const c::char, posX: int, posY: int, fontSize: int, c: color) void;

export @symbol("SetTargetFPS") fn set_target_fps(fps: int) void;
