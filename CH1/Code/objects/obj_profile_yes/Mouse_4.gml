if profile_yes_chosen = 1
{
	audio_play_sound(sfx_click,0,false)
	global.name = obj_name_input.player_name;
	fade_to_room(rm_avatar_alt);
	obj_profile_yes.profile_yes_chosen = 0;
	obj_profile_no.profile_no_chosen = 0;
}