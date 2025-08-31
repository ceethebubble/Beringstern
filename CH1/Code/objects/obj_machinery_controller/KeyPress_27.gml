if global.debug
{
	audio_stop_all()
	audio_play_sound(msc_debug,0,true)
	room_goto(rm_debug_battle)
}