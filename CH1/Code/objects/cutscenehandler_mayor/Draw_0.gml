//Draw text box and text-----------------------------------
draw_set_alpha(1)

draw_sprite_ext(spr_dialog_center, 1, 680, 640, 1.425, 1.425, 0, c_white, image_alpha)
if dialog_index > 1
{
	draw_set_halign(fa_left)
	draw_text_transformed(385, 550, typed_string, 0.5,0.5,0);
}

//Draw black--------------------------------------------------------------------------------------------------------------------
			
if dialog_index == 4 and (char_index > 14 or char_index = 0)
{
	drawAlphaBlack += 0.2
	draw_set_alpha(drawAlphaBlack)
	draw_set_color(c_black);
	draw_rectangle(0,0,1366,768,false);
}
			
//------

if !dialogStart
{
	draw_set_halign(fa_center)
	draw_text_transformed(650,530,"July, 2024",1,1,0)
}