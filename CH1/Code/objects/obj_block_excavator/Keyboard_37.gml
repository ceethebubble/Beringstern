if excavatorYeah = true and clawRotation < 270
{
	if clawRotation < 90
	{
		excavatorRotation += global.level + 1;
		clawTimes += global.level + 1;
	}
	else if clawRotation >= 260
	{
		excavatorRotation = 90;
		clawRotation = 260;
		if pickUpDirt
		{
			give_money(random_range(global.level + 1,(global.level + 1) * 5),random_range(100,900),random_range(100,900))
			pickUpDirt = false;
			audio_play_sound(sfx_pixel_open,0,false)
		}
	}
	clawRotation += global.level + 1;
	audio_play_sound(sfx_excavatorMove,0,false)
}