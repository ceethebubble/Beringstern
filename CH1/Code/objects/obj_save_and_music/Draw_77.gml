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