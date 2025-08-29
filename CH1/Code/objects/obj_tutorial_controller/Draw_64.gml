draw_set_color(c_white)
draw_set_font(fnt_fancy)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_alpha(textAlpha)
draw_text_transformed(x,y,wrap_text(text,900,0.4),0.4,0.4,0)

if showBox
{
	draw_set_font(fnt_default)
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
	makeBox(96,64,96+1088,64+150,c_white,7)
	if chosen = 1
		draw_set_color(c_green)
	else
		draw_set_color(c_black)

	draw_text_transformed(96+150,64+60,"I understand.",0.4,0.4,0)
	
	if chosen = 2
		draw_set_color(c_green)
	else
		draw_set_color(c_black)
	draw_text_transformed(96+850,64+60,"what",0.4,0.4,0)
}