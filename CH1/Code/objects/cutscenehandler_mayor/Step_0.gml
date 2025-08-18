
//Fade----------------------------------------------------------------------------------------------------------------------------
if image_alpha >= 1
{
	image_alpha = 1;
	if dialog_index = 0{
		dialog_index = 1;
		alarm[0]=40
	}
}
else if dialogStart
{
	image_alpha += 0.01
}
//show_debug_message(image_alpha)

//Dialog--------------------------------------------------------------------------------------------------------------------------
if dialog{
if (char_index < string_length(dialog_string)) {
		char_index += typing_speed;
		if (char_index % 1 == 0) and typed_string != string_replace_all(dialog_string, "&", ""){
			//show_debug_message(string_char_at(dialog_string,char_index))
			
			if string_char_at(dialog_string, char_index) == "^" and string_char_at(dialog_string, char_index+1) == "r"
			{char_index += 1; draw_set_color(c_red)}
			else if string_char_at(dialog_string, char_index) == "^" and string_char_at(dialog_string, char_index+1) == "b"
			{char_index += 1; draw_set_color(c_black)}
			else if string_char_at(dialog_string, char_index) != "&"
			{typed_string = typed_string + string_char_at(dialog_string, char_index); 
				if global.voicelines == "off" {
				audio_play_sound(dialogSound,1,false);
			}
			}
		}
}
}

//DEBUG
//show_debug_message(char_index)

//CUTSCENE--------------------------------------------------------------------------------------------------------------------
			
			if dialog_index == 4 and (char_index > 36)
			{
				audio_stop_all();
				char_index = 0;
				audio_pause_sound(sfx_cheer)
				audio_play_sound(sfx_suspense_stinger,1,false)
				typed_string = "";
				dialog_string = "";
				dialog = false;
				alarm[4]=3 * room_speed;
			}
			
