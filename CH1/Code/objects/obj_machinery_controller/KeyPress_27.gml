if global.debug
{
	video_close()
	room_goto(rm_debug_battle)
	audio_stop_all()
	audio_play_sound(msc_debug,0,true)
}