global.avatar = shdr_player_red;
global.name_of_avatar = "character red";
global.job = "construction";
if string_length(keyboard_string ) > name_max
{
	if room = rm_profile
	{
		keyboard_string = string_copy(keyboard_string,1,name_max)
	}
}

if player_name != keyboard_string
{
	if room = rm_profile and cutscene = 0
	{
		player_name = keyboard_string
		name_chosen = 0;
	}
}

if (gamepad_button_check_pressed(0, gp_face1))
{
	if string_replace_all(player_name, " ", "") == ""
	{
		player_name = "Brandon";
		keyboard_string = "Brandon";
		name_chosen = 1;
	}
	else
	{
		name_chosen = 1;
	}
	sound_on = true
}

if (gamepad_button_check_pressed(0, gp_face4)) {
    name_letter_on = name_letter_on - 1;
	keyboard_string = string_copy(keyboard_string, 1, string_length(keyboard_string) - 1);
}
if (gamepad_button_check_pressed(0, gp_face3)) 
{
	keyboard_string = keyboard_string + chr(64 + controller_value_letter);
}
if (gamepad_button_check_pressed(0, gp_shoulderrb)) 
{
	controller_value_letter = controller_value_letter + 1
}
if (gamepad_button_check_pressed(0, gp_shoulderlb)) 
{
	controller_value_letter = controller_value_letter - 1
}
if (64 + controller_value_letter) >= 123
{
	controller_value_letter = 1
}
if  (64 + controller_value_letter) <= 64
{
	controller_value_letter = 33
}
if  (64 + controller_value_letter) >= 91 and (64 + controller_value_letter) <= 96
{
	controller_value_letter = 1
}

//controller_value_letter = controller_value_letter + 1
//show_debug_message( string(controller_value_letter) + " : " + string(chr(controller_value_letter)));

name_showing = 0;

if player_name = "Bubbleblight" or player_name = "idk"
	name_showing = 1;
		
		
if bubbleblightCutsceneShit = 1
{
	bubbleblightCutsceneShit = 10000;
	cutscene = 1;
	alarm[2] = 1;
}

if bubbleblightExplosion > 0
{
	bubbleblightExplosion += 0.25
}

if bubbleblightExplosion > 6
{
	bubbleblightExplosion = 60;
	bubbleblightExplosion2 = 1;
}