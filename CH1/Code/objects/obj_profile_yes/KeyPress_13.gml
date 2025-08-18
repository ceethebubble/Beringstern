if profile_yes_chosen = 1 and obj_name_input.name_chosen = 1
{
	global.name = obj_name_input.player_name;
		fade_to_room(rm_avatar_alt);
		obj_profile_yes.profile_yes_chosen = 0;
		obj_profile_no.profile_no_chosen = 0;
}