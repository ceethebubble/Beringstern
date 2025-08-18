if y > randomY
{
	sprite_index = spr_rain_splash
	if image_index >= image_number - 1
	{
		changing = true;
		image_speed = 0;
	}
	if changing
		image_alpha -= 0.2
	if image_alpha < 0
		instance_destroy()
}
else
{
	y += ySpeed
}