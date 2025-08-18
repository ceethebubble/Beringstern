if textToShow != ""
{
	makeBox(100,100,600,600,c_white,12)
	draw_set_color(c_black);
	draw_text(120,120,wrap_text(textToShow,190,0.6))
}