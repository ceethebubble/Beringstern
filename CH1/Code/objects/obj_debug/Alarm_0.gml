audio_stop_all()
audio_play_sound(msc_debug,0,true)
ini_open("main.ini");
ini_write_real("Menu", "Debug", 1);
ini_close();
fade_to_room(rm_debug)