if !audio_is_playing(global.songs[1])
	loadFile(false)
	
steps_per_beat = room_speed * 60 / tempo;
beat_timer += 1;
timerFake += (times - timerFake) / 5

if (beat_timer >= steps_per_beat) {
    beat_timer -= steps_per_beat; // keeps leftover fraction for accuracy
	alarm[4] = 1
}

if times > 0 and times < 3
{
	clickNow = ""
	if !clickedSpace missed = true
	clickedSpace = false
	clickNow = string(3 - times)
	clickState = string(3 - times)
	debugDisplay = clickNow
}

if times = 3
{
	clickNow = "SPACE"
	clickState = "SPACE"
	if !clickedSpace debugDisplay = clickNow
	if keyboard_check(vk_space)
	{
		clickedSpace = true
		debugDisplay = "HIT!"
	}
}

if clickNow = ""
{
	clickState = ""
	debugDisplay = clickNow
}

if missed and !global.debug
	room_goto(cts_game_over)

if global.debug missed = false

if clickState != "SPACE" and keyboard_check(vk_space) and !global.debug
	room_goto(cts_game_over)