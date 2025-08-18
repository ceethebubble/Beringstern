if excavatorYeah = true and clawRotation > 0
{
	if excavatorRotation > 0 and clawRotation < 90
	{
		excavatorRotation -= global.level + 1;
		clawTimes -= global.level + 1;
	}
	else if excavatorRotation < 0 and clawRotation > 90
	{
		clawRotation = 90;
		excavatorRotation = 0;
	}
	
	
	clawRotation -= global.level + 1;
	audio_play_sound(sfx_excavatorMove,0,false)
}