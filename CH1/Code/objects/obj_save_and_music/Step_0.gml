if !global.cutscene
{
	if global.room != rm_tutorial
		saveFile()
	audio_sound_gain(global.musicsnd,1,50)
}
else
{
	audio_sound_gain(global.musicsnd,0.3,50)
}

//Music statements

// Assuming "room_statement" is a variable that holds the current room's name or type
switch (global.room_statement) {
    case "overworld":
        // Check if the overworld music is already playing
        if (!audio_is_playing(msc_overworld)) {
            // Pause all other audio if necessary
            audio_stop_all();
            // Play the overworld music
			global.musicsnd = msc_overworld
            audio_play_sound(msc_overworld, 1, true);
        }
        break;
		
	case "wildlife":
        // Check if the overworld music is already playing
        if (!audio_is_playing(msc_wildlife)) {
            // Pause all other audio if necessary
            audio_stop_all();
            // Play the overworld music
			global.musicsnd = msc_wildlife
            audio_play_sound(msc_wildlife, 1, true);
        }
        break;
		
	case "proffesor":
        // Check if the overworld music is already playing
        if (!audio_is_playing(msc_proffesor)) {
            // Pause all other audio if necessary
            audio_stop_all();
            // Play the overworld music
			global.musicsnd = msc_proffesor
            audio_play_sound(msc_proffesor, 1, true);
        }
        break;
		
	case "tutorial":
        // Check if the overworld music is already playing
        if (!audio_is_playing(global.songs[0])) {
            // Pause all other audio if necessary
            audio_stop_all();
            // Play the overworld music
			global.musicsnd = global.songs[0]
            audio_play_sound(global.songs[0], 1, true);
        }
        break;

    // Add more cases here for other room types if needed
    // case "other_room_type":
    //     if (!audio_is_playing(msc_other_music)) {
    //         audio_stop_all();
	//         global.musicsnd = msc_other_music
    //         audio_play_sound(msc_other_music, 1, true);
    //     }
    //     break;

    default:
        // Optional: Stop all audio if the room statement doesn't match any case
        audio_stop_all();
        break;
}

if room = rm_wildlife
	global.room_statement = "wildlife";
else if room = rm_proffesor
	global.room_statement = "proffesor";
else if room = rm_tutorial
	global.room_statement = "tutorial"
else
	global.room_statement = "overworld"
	
global.room = room

if not global.debug
	global.gameTime = current_hour + (current_minute / 60)
if global.gameTime < 1 && global.gameTime > 0
	global.gameTime += 24

global.maxhp = 60 + global.toughness * 20

if weather = "rain"
{
	weather = "raining"
	alarm[0] = 0.2 * room_speed
}