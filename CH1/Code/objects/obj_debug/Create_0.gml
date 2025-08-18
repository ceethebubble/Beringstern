audio_play_sound(msc_chamber,0,true)
currenttext = "Who is it?"
typed = "";
keyboard_string = "";
fading = false;

ini_open("main.ini");

if (ini_read_real("Menu", "Debug", 0) == 1)
{
	ini_close()
	audio_stop_all()
	audio_play_sound(msc_debug,0,true)
	room_goto(rm_debug)
}