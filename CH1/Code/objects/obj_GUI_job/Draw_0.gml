/// @description Draws the buttons
// You can write your code in this editor

draw_sprite_ext(spr_jobs_gui,0,180,385,0.7,0.7,0,c_white,1);
draw_sprite_ext(spr_jobs_gui,1,520,385,0.7,0.7,0,c_white,1);
draw_sprite_ext(spr_jobs_gui,2,845,385,0.7,0.7,0,c_white,1);
draw_sprite_ext(spr_jobs_gui,3,1185,385,0.7,0.7,0,c_white,1);

draw_set_font(fnt_default)
draw_set_color(make_color_rgb(60,70,255))
draw_text_transformed(683,680,"Choose a job!",0.5,0.5,6)
