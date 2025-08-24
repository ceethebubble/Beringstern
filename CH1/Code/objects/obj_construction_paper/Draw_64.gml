if drawPaper
{
	global.flags[9] = true
	draw_sprite_ext(spr_gui_construction_paper,0,window_get_width()/2,(mouse_y/2)-300,0.8,0.8,0,c_white,1)
}