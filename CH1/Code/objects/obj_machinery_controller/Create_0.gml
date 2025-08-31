audio_play_sound(global.songs[1],0,false)
clickSpaceNow = true
clickedSpace = true
clickedWhileNot = false
beat_phase = 1
tempo = 180
steps_per_beat = 0
beat_timer = steps_per_beat;
rectangleSize = 0
events = [];
if (file_exists("music/charts/machinery.chart"))
{
    var f = file_text_open_read("music/charts/machinery.chart");
    var data = "";

    while (!file_text_eof(f)) {
        data += file_text_read_string(f);
        file_text_readln(f);
    }
    file_text_close(f);

    events = json_parse(base64_decode(data));
}
song_ms = 0 - (60000 / tempo)

videoData = -1
video_path = "music/covers/Buried Machinery.mp4";
// Load video
videoData = -1
vidExists = false
vidOpen = -1
HP = global.maxhp / 2

if (file_exists(video_path))
{
	alarm[2] = 1
}