use fmt;
use raylib::*;

export fn main () void = {
	init_window(800, 450, "raylib example");
	set_target_fps(60); // Set game to run at 60 frames-per-second
	for(!window_should_close()) {
		begin_drawing();
		clear_background(RAYWHITE);
		draw_text(
			"Congrats! You created your first window!",
			190, 200, 20, LIGHTGRAY);
		end_drawing();
	};
	close_window();
};
