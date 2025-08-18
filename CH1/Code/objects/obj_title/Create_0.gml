// Create Event of obj_title
start_time = current_time; // Record the current time
duration = 2; // Duration in seconds
alpha = 1; // Initial alpha
stretch = 0.8; // Initial stretch
stretchy = 0.4
if !audio_is_playing(msc_beringsterntheme)
{
	audio_stop_all()
	audio_play_sound(msc_beringsterntheme, 0, true)
}	