if global.voicelines == "off"{
	global.voicelines = "on";
}
else if global.voicelines == "on"{
	global.voicelines = "off";
}
audio_play_sound(sfx_click,0,false)