audio_stop_all()
songs = get_wav_files_in_music()
tempofiles = get_tempo_files()
current_index = 0
cover_sprite = -1
videoData = -1
vidExists = false
vidOpen = -1
video_close()
indexrised = false

speedX = 0
side = 0
max_index = array_length(songs) - 2;
xCover = (room_width/2)
yCover = (room_height/2)
xCoverOffset = 0
rotationCover = 0
scaleCover = 0.4
scaleCoverFinal = 0.4

djScale = 0.5
tempo = 0
steps_per_beat = 0
beat_timer = steps_per_beat;

current_music = -1

music_setup()