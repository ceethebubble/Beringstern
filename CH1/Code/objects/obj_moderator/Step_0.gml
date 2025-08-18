/*
draw_set_halign(fa_left)

// Moderator usernames and numbers
var moderators = ["jj","cee","mrbubbles", "duck","aksh","ray","may","connor", "gus", "nick", "scraps", "max"]; //MODDERS ADD HERE!
var additions = ["95", "55", "10", "Marshmallow","inchy","marshy","marshmallow","3","frog", "tax"]; // MODDERS, ADD HERE!
var valid_passwords = [];

// Create the list of valid passwords
for (var i = 0; i < array_length(moderators); i++)
{
	array_push(valid_passwords, moderators[i] + "-cgr");
    for (var j = 0; j < array_length(additions); j++) {
        array_push(valid_passwords, moderators[i] + additions[j]);
		for (var k = 0; k < array_length(additions); k++) {
			array_push(valid_passwords, moderators[i] + additions[j] + additions[k]);
		}
    }
}

// Prompt for password
if (keyboard_check_pressed(vk_f1)) {
	audio_play_sound(sfx_pixel_open,0,false)
    var typed_password = get_string("Moderator Password:", "");
    
    // Check if the typed password is in the valid_passwords array
    var is_valid = false;
    for (var k = 0; k < array_length(valid_passwords); k++) {
        if (typed_password == valid_passwords[k]) {
            is_valid = true;
            break;
        }
    }

    // Respond based on password validity
    if (is_valid) and (file_exists("progressFileDefault.bstrn")) {
		loadFile(false)
        room_goto(rm_debug);
    } else {
        show_message("Either the moderator password is invalid or you do not have a save file. Please create one if you think the moderator password is valid.");
    }
}
