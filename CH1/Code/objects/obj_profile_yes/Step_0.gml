controller_x_axis = gamepad_axis_value(0, gp_axislh); // Left stick horizontal axis
//show_debug_message(controller_x_axis)
if (controller_x_axis > 0.5) {
	profile_yes_chosen = 0
	obj_profile_no.profile_no_chosen = 1
	if obj_name_input.player_name == "Scraps"
	{
		audio_play_sound(sfx_vine_boom,1,false)
	}
}
if (controller_x_axis < -0.5) {
	profile_yes_chosen = 1
	obj_profile_no.profile_no_chosen = 0
	if obj_name_input.player_name == "Scraps"
	{
		audio_play_sound(sfx_vine_boom,1,false)
	}
}
if (gamepad_button_check(0, gp_face1)) {
	if profile_yes_chosen = 1
	{
		global.name = obj_name_input.player_name;
		fade_to_room(rm_avatar_alt);
		obj_profile_yes.profile_yes_chosen = 0;
		obj_profile_no.profile_no_chosen = 0;
	}
}