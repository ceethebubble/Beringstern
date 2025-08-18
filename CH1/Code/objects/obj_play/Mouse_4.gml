audio_play_sound(sfx_click,1,false)

if (file_exists("progressFileDefault.bstrn"))
	loadFile()
else
	fade_to_room(rm_profile);