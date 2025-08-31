audio_stop_all()

showResults = false

timeRatio = global.battletime / global.timeSpent
timeCalc = clamp(timeRatio, 0, 1);
hpCalc = clamp((global.hp / global.maxhp) * 1000,0,999)
stylishPoints = round(global.stylishPoints)

timeClamped = clamp(timeCalc*1000, 0, 999);

timeNumbers = "";

if (timeClamped < 10) {
    timeNumbers = "00" + string(round(timeClamped));
} else if (timeClamped < 100) {
    timeNumbers = "0" + string(round(timeClamped));
} else {
    timeNumbers = string(round(timeClamped));
}

hpNumbers = "";

if (hpCalc < 10) {
    hpNumbers = "00" + string(round(hpCalc));
} else if (hpCalc < 100) {
    hpNumbers = "0" + string(round(hpCalc));
} else {
    hpNumbers = string(round(hpCalc));
}

stylishClamped = clamp((stylishPoints * 50), 0, 999);
stylishNumbers = "";

if (stylishClamped < 10) {
    stylishNumbers = "00" + string(stylishClamped);
} else if (stylishClamped < 100) {
    stylishNumbers = "0" + string(stylishClamped);
} else {
    stylishNumbers = string(stylishClamped);
}

styleTarget = global.styleGoal;

finalHPCalc = clamp(global.hp / global.maxhp, 0, 1);
styleRatio = clamp(stylishPoints / styleTarget, 0, 1);

finalScore = round((timeCalc + finalHPCalc + styleRatio) / 3 * 100);

screenshot_sprite = -1;
screenshot_file_path = "screenshots/battle-" + string(global.battlegroup) + ".png";

if (file_exists(screenshot_file_path))
	file_delete(screenshot_file_path)

if (surface_exists(global.room_screenshot)) {
    surface_save(global.room_screenshot, screenshot_file_path);
}

prev_w = window_get_width();
prev_h = window_get_height();
prev_fullscreen = window_get_fullscreen();

// jingles and animations

if global.ending = 1
{
	global.flags[5] += 1
	alarm[0] = 1.84*room_speed
	jingle = "k"
	sprite_index = spr_player_results_k
	show_debug_message("Kill")
}
else
{
	global.flags[4] += 1
	alarm[0] = 1.34*room_speed
	jingle = "s"
	sprite_index = spr_player_results_s
	show_debug_message("Spare")
}

if global.hp <= 20
{
	sprite_index = spr_player_results_lh
}

soundJingle = sfx_jinglewin_s

if (finalScore < 40)
    soundJingle = asset_get_index("sfx_jinglewin_b" + jingle);
else if (finalScore < 100)
    soundJingle = asset_get_index("sfx_jinglewin_" + jingle);
else
    soundJingle = asset_get_index("sfx_jinglewin_p" + jingle);

audio_play_sound(soundJingle,0,false)

show_debug_message("Your final score is " + string(finalScore) + "!")
finalRating = 5
finalRatingFake = 5

finalScoreScale = 0
finalScoreScale = 0.42

if (finalScore < 20)
{
    finalRating = 5;
}
else if (finalScore < 40)
{
    finalRating = 4;
}
else if (finalScore < 60)
{
    finalRating = 3;
}
else if (finalScore < 80)
{
    finalRating = 2;
}
else if (finalScore < 100)
{
    finalRating = 1;
}
else
{
    finalRating = 0;
}
	
if finalRating != 5
	alarm[1] = (2 * room_speed)
	
audio_sound_pitch(sfx_dong,1)
global.xp += finalRating * 30

fading = 0

//easter egg! :D

easterEgg = 0
easterEggX = 1400
easterEggY = y + 100
easterEggS = 0
easterEggD = false
easterEggT = 0
easterEggSE = 0