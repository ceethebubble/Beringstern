if !audio_is_playing(global.songs[1])
{
	video_close()
	loadFile(false)
	if (global.debug)
	{
		var _json = json_stringify(events);
		
		// open file for writing
		var fname = "machinery.chart";
		var f = file_text_open_write(fname);
		
		file_text_write_string(f,base64_encode(_json));
		file_text_close(f);
		
		show_debug_message("Chart saved to " + fname);
	}
}

steps_per_beat = room_speed * 60 / tempo;

beat_timer += 1;

beat_phase += 1 / steps_per_beat

if beat_phase > 1 beat_phase = 1

if clickedSpace and clickSpaceNow and rectangleSize < 1 rectangleSize = 20
rectangleSize += (0 - rectangleSize) / 5

if global.debug	clickedSpace = true

var ms = song_ms;

for (var i = 0; i < array_length(events); i++) {
    var target = events[i].milliseconds;

    if (abs(ms - target) < 10) {
        show_debug_message("Click Space! ms:" + string(target));
		alarm[1] = steps_per_beat * 1.5 // delay for late timing
		beat_phase = 0
		clickSpaceNow = true;
		clickedWhileNot = false
		clickedSpace = false
    }
}

song_ms += (1000 / room_speed);