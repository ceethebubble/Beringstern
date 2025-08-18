if white > 0
{
	white -= 0.02
}

if image_index < 30
{
	image_speed = 1
}
else
{
	image_speed = 0
	if spotlight < 0.5
	{
		spotlight += 0.05
	}
	if !musicPlay
	{
		musicPlay = true
		alarm[0] = room_speed
	}
}

if random_range(1,6) > 3
{
	flicker = 0.7
	flickycolor = make_color_rgb(40,40,40)
}
else if random_range(1,5) = 5
{
	flicker = 0.6
	flickycolor = c_black
}
else
{
	flicker = 0.65
	flickycolor = make_color_rgb(30,30,30)
}

game_over_index += 1