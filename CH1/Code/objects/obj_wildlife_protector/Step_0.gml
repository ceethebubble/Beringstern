distance = (device_mouse_x_to_gui(0)-xrandoms+device_mouse_y_to_gui(0)-yTrash)

if distance < 30 and distance > -30
{
	hoverOn = true;
	
	if (mouse_check_button_pressed(mb_left))
	{
		if global.tutorial_progress = 0
		{
			global.tutorial_progress = 1
		}
		give_money(random_range(global.level + 2,(global.level + 2) * 2),random_range(100,room_width-100),random_range(100,room_height-100))
		xrandoms = random_range(300,700);
		imgrandoms = random_range(0,7);
	}
}
else
{
	hoverOn = false;
}