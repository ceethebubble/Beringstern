if !audio_is_playing(global.songs[1])
	loadFile(false)

steps_per_beat = room_speed * 60 / tempo;

beat_timer += 1;

beat_phase += 1 / steps_per_beat

if (beat_timer >= steps_per_beat) {
    beat_timer -= steps_per_beat; // keeps leftover fraction for accuracy
	clickSpaceNow = !clickSpaceNow;
	clickedWhileNot = false
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

if clickSpaceNow
	beat_phase = 1
else
	if beat_phase > 1 beat_phase -= 1

if clickedSpace and clickSpaceNow and rectangleSize < 1 rectangleSize = 20
rectangleSize += (0 - rectangleSize) / 5