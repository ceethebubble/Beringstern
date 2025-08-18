if box
{
	makeBox(120,440,1280,680,c_white,12)
	draw_set_color(c_black)
	draw_set_halign(fa_center);
	draw_text_transformed(660,460,"Use the excavator?",0.6,0.6,0)
	if chosen == "yes" { draw_set_color(c_green) }
	draw_text_transformed(560,510,"Yes",0.5,0.5,0)
	draw_set_color(c_black);
	if chosen == "no" { draw_set_color(c_green) }
	draw_text_transformed(730,510,"No",0.5,0.5,0)
}