image_index = 0;

if pressed == 1 or pressed == 2
{
	image_index = 1;
	spinEase += 2
	image_angle = spinEase
	if spinEase > 20 and pressed == 1
	{
		pressed = 2
		fade_to_room(rm_settings)
	}
}