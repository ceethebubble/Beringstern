if gray > 255
{
	gray = 255
}

if gray < 0
{
	gray = 0
}

// === Settings ===
var scale = 0.5;
var wheel_x = 517.5;
var wheel_y = 117.5;
var sprite_w = sprite_get_width(spr_gui_colorwheel);
var sprite_h = sprite_get_height(spr_gui_colorwheel);

// === 1. Create Surface at full sprite size (no scaling)
if (!surface_exists(wheel_surface) || surface_get_width(wheel_surface) != sprite_w || surface_get_height(wheel_surface) != sprite_h) {
    if (surface_exists(wheel_surface)) surface_free(wheel_surface);
    wheel_surface = surface_create(sprite_w, sprite_h);
}

// === 2. Draw color wheel to surface at full scale
surface_set_target(wheel_surface);
draw_clear_alpha(c_black, 0);
gpu_set_blendmode(bm_normal);
draw_sprite_ext(spr_gui_colorwheel, 0, 0, 0,1,1,0,make_color_rgb(gray,gray,gray),1); // No scale here!
surface_reset_target();

// === 3. Draw surface to screen at desired position and scale
draw_surface_ext(wheel_surface, wheel_x, wheel_y, scale, scale, 0, make_color_rgb(gray,gray,gray), 1);

// === 4. Get color under the circle
var local_x = (sel_x - wheel_x) / scale;
var local_y = (sel_y - wheel_y) / scale;
var picked_color = c_white;

if (local_x >= 0 && local_x < sprite_w && local_y >= 0 && local_y < sprite_h) {
    picked_color = surface_getpixel(wheel_surface, local_x, local_y);
}

var r = color_get_red(picked_color) / 255;
var g = color_get_green(picked_color) / 255;
var b = color_get_blue(picked_color) / 255;

draw_set_halign(fa_left)

draw_set_font(fnt_default)
draw_set_color(make_color_rgb(240,128,255))
draw_text_transformed(100,600,"Use A, D, and arrow keys to change color.\n Press enter when you're done.",0.45,0.45,0)

if colorpart = 0
{
	draw_text_transformed(100,700,"Selected Body: Base",0.4,0.4,0)
	avatarBaseR = r
	avatarBaseG = g 
	avatarBaseB = b
}
if colorpart = 1
{
	draw_text_transformed(100,700,"Selected Body: Outline",0.4,0.4,0)
	avatarOutlineR = r
	avatarOutlineG = g
	avatarOutlineB = b
}
if colorpart = 2
{
	draw_text_transformed(100,700,"Selected Body: Face",0.4,0.4,0)
	avatarFaceR = r
	avatarFaceG = g
	avatarFaceB = b
}
if colorpart = 3
{
	draw_text_transformed(100,700,"Selected Body: Shoes",0.4,0.4,0)
	avatarShoeR = r
	avatarShoeG = g
	avatarShoeB = b
}

shader_set(shdr_player_custom);

shader_set_uniform_f(shader_get_uniform(shdr_player_custom, "char_index"), global.char_index);

shader_set_uniform_f(shader_get_uniform(shdr_player_custom, "avatarR"), avatarBaseR);
shader_set_uniform_f(shader_get_uniform(shdr_player_custom, "avatarG"), avatarBaseG);
shader_set_uniform_f(shader_get_uniform(shdr_player_custom, "avatarB"), avatarBaseB);

shader_set_uniform_f(shader_get_uniform(shdr_player_custom, "avatarOutlineR"), avatarOutlineR);
shader_set_uniform_f(shader_get_uniform(shdr_player_custom, "avatarOutlineG"), avatarOutlineG);
shader_set_uniform_f(shader_get_uniform(shdr_player_custom, "avatarOutlineB"), avatarOutlineB);

shader_set_uniform_f(shader_get_uniform(shdr_player_custom, "avatarFaceR"), avatarFaceR);
shader_set_uniform_f(shader_get_uniform(shdr_player_custom, "avatarFaceG"), avatarFaceG);
shader_set_uniform_f(shader_get_uniform(shdr_player_custom, "avatarFaceB"), avatarFaceB);

shader_set_uniform_f(shader_get_uniform(shdr_player_custom, "avatarShoeR"), avatarShoeR);
shader_set_uniform_f(shader_get_uniform(shdr_player_custom, "avatarShoeG"), avatarShoeG);
shader_set_uniform_f(shader_get_uniform(shdr_player_custom, "avatarShoeB"), avatarShoeB);

draw_sprite_ext(spr_player_run,subimg,100,100,2,2,0,c_white,1);
shader_reset()