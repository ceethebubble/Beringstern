clickSpaceNow = false
if !clickedSpace
{
	play_sfx(sfx_hurt)
	HP -= 1
	if HP < 1
	{
		video_close()
		audio_stop_all()
		room_goto(cts_game_over)
	}
}