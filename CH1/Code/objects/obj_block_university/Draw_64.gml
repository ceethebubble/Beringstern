if showBox
{
	makeBox(96,64,96+1088,64+150,c_white,7)
	if chosen = 1
		draw_set_color(c_green)
	else
		draw_set_color(c_black)
	
	var _msg = "I'm a..."
	switch (global.job)
	{
		case "construction":
			_msg = "I'm a construction worker"
			break;
		case "scientist":
			_msg = "I'm a scientist"
			break;
		case "wildlife":
			_msg = "I protect the wildlife"
			break;
		default:
			_msg = "Nothing much"
			break;
	}
	draw_text_transformed(96+150,64+60,_msg,0.4,0.4,0)
	
	if chosen = 2
		draw_set_color(c_green)
	else
		draw_set_color(c_black)
	draw_text_transformed(96+850,64+60,"...",0.4,0.4,0)
}