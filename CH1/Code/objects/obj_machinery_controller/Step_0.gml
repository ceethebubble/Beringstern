if !audio_is_playing(global.songs[1])
	loadFile(false)

steps_per_beat = room_speed * 120 / tempo;

beat_timer += 1;

if (beat_timer >= steps_per_beat) {
    beat_timer -= steps_per_beat; // keeps leftover fraction for accuracy
	clickSpaceNow = !clickSpaceNow;
	if clickSpaceNow
	{
		clickedSpace = false
	}
	else
	{
		if !clickedSpace
			room_goto(cts_game_over)
	}
}