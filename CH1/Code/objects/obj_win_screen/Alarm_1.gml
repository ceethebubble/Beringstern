if finalRatingFake = finalRating audio_sound_pitch(sfx_dong,1);
var pitch = 4 - ((finalRatingFake+1)/2)
audio_sound_pitch(sfx_dong,pitch)
play_sfx(sfx_dong)
finalRatingFake -= 1
finalScoreScale = 0.45
if finalRatingFake != finalRating
	alarm[1] = (0.2 * room_speed)