if obj_name_input.name_chosen = 1
{
	audio_play_sound(sfx_hover,0,false)
	profile_yes_chosen = 1
	if obj_name_input.player_name == "Scraps"
	{
		audio_play_sound(sfx_vine_boom,1,false)
	}

}