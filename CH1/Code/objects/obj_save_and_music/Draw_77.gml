shader_set(shdr_daynight)
shader_set_uniform_f(shader_get_uniform(shdr_daynight, "u_time"), global.gameTime);
var base_w = 1366;
var base_h = 768;

// Get window size
var win_w = window_get_width();
var win_h = window_get_height();

// Scale factor (smallest dimension ratio)
var scale = min(win_w / base_w, win_h / base_h);

// Center the drawing
var draw_x = (win_w - base_w * scale) * 0.5;
var draw_y = (win_h - base_h * scale) * 0.5;

// Draw application surface with aspect ratio preserved
draw_surface_ext(application_surface, draw_x, draw_y, scale, scale, 0, c_white, 1);

shader_reset()

// --- Draw borders ---
if (win_w / win_h > base_w / base_h) {
	// Window is wider → vertical bars on left/right
	var bar_w = (win_w - base_w * scale) * 0.5;
	draw_sprite_stretched(spr_borders, 0, 0, 0, bar_w, win_h);              // Left bar
	draw_sprite_stretched(spr_borders, 0, win_w - bar_w, 0, bar_w, win_h);  // Right bar
} else if (win_w / win_h < base_w / base_h) {
	// Window is taller → horizontal bars on top/bottom
	var bar_h = (win_h - base_h * scale) * 0.5;
	draw_sprite_stretched(spr_borders, 0, 0, 0, win_w, bar_h);              // Top bar
	draw_sprite_stretched(spr_borders, 0, 0, win_h - bar_h, win_w, bar_h);  // Bottom bar
}