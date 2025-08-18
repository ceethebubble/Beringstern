if dialogStart
{
if (!skipping or typed_string = string_replace_all(dialog_string, "&", "")) and dialog_index < 4 //MAX NUMBER
{
if keyboard_check(vk_enter){
skipping = true;
typed_string = "";
draw_set_font(fnt_default);
char_index = 0;
typing_speed = 0.5;
dialog_index += 1
draw_set_color(c_black)
if dialog_index = 2{
	dialog_string = "&&&&The road ahead may \nnot always be easy,&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& but I \nhave faith in you.";
}
else if dialog_index = 3{
	audio_play_sound(sfx_cheer,1,false) //Play sound effect
	if global.voicelines == "on"{
		audio_pause_sound(mayor_01)
		audio_play_sound(mayor_02,1,false)
	}
	dialog_string = "Thank you for coming and \nlistening to my speech.";
}
else if dialog_index = 4{
	skipping = false;
	if global.voicelines == "on"{
		audio_pause_sound(mayor_02)
		audio_play_sound(mayor_03,1,false)
	}
	dialog_string = "&&&&&&Goodbye, citizens! I will \nsee you next year.";
}
else
{
	draw_set_font(fnt_arial);
	draw_set_color(c_red);
	dialog_string = "--No string attached-- Dialog Index: "+string(dialog_index);
}
}
}
else
{
	typed_string = string_replace_all(dialog_string, "&", "");
	skipping = false;
}
}