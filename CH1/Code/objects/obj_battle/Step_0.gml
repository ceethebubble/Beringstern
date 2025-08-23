if asset_get_index("spr_bgb_" + background) != -1
{
	sprite_index = asset_get_index("spr_bgb_" + background)
	x = 0
	y = 0
}

hpChange += (global.hp - hpChange) / 5
hpPercent = hpChange / global.maxhp
hpOpponentChange += (global.opponent_hp - hpOpponentChange) / 5
hpOpponentPercent = hpOpponentChange / global.opponent_maxhp

if global.hp <= 0
{
	room_goto(cts_game_over)
}


if !global.cutscene
{
	global.timeSpent += 1/room_speed
	volume += 0.2
	guidown += (0 - guidown) / 10
}
else
{
	if !global.musPlay
	{
		volume -= 0.2
		guidown += (250 - guidown) / 20
	}
}

if volume > 1
	volume = 1
else if volume < 0
	volume = 0
	
audio_sound_gain(music,volume,0)

if global.playery > 1280 && fading == 0
{
	fading = 1
	global.flags[6] += 1
	show_debug_message("Flee!")
	fade_to_room(global.room)
}

if not global.debug global.gameTime = current_hour + (current_minute / 60)