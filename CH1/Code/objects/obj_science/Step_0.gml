rgb = make_color_rgb(red * (dark + 1) * 127.5, green * (dark + 1) * 127.5, blue * (dark + 1) * 127.5)
rgb_fake = make_color_rgb(red_fake * (dark_fake + 1) * 127.5, green_fake * (dark_fake + 1) * 127.5, blue_fake * (dark_fake + 1) * 127.5)

if keyboard_check(ord("R"))
{
	red = 1;
}
else
{
	red = 0;
}

if keyboard_check(ord("G"))
{
	green = 1;
}
else
{
	green = 0;
}

if keyboard_check(ord("B"))
{
	blue = 1;
}
else
{
	blue = 0;
}

if keyboard_check(ord("K"))
{
	dark = 0;
}
else
{
	dark = 1;
}

//show_debug_message(string(yy)+" "+string(yx)+" ")
//show_debug_message(string(red_fake) + " " + string(green_fake) + " " + string(blue_fake) + " " + string(dark_fake) + " " + string(red) + " " + string(green) + " " + string(blue) + " " + string(dark))

if red = red_fake && green = green_fake && blue = blue_fake && (dark = dark_fake or (red_fake == 0 && green_fake == 0 && blue_fake == 0))
{
	red_fake = round(random_range(0,1))
	green_fake = round(random_range(0,1))
	blue_fake = round(random_range(0,1))
	dark_fake = round(random_range(0,1))
	if global.tutorial_progress = 0
	{
		global.tutorial_progress = 1
	}
	give_money(random_range(global.level + 2,(global.level + 2) * 5),random_range(100,room_width-100),random_range(100,room_height-100))
}