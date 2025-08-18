if excavatorYeah = true
{
	if clawRotation < 20 and !pickUpDirt
	{
		audio_play_sound(sfx_pixel_open,0,false)
		show_debug_message("Picked up dirt!")
		global.xp += (global.level * 5) + 10;
		pickUpDirt = true;
		if global.tutorial_progress = 0
		{
			global.tutorial_progress = 1
		}
	}
}