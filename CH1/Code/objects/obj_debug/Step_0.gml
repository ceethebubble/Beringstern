typed = keyboard_string;

var moderators = load_list_from_txt("moderators/moderators.txt")
var additions = load_list_from_txt("moderators/additions.txt")
var valid_passwords = [];

var matched_moderator = ""; // <- store the name here!

// Create the list of valid passwords
for (var i = 0; i < array_length(moderators); i++) {
	array_push(valid_passwords, moderators[i] + "-cgr");
	if (typed == moderators[i] + "-cgr") matched_moderator = moderators[i]; // Check for match!
	
	for (var j = 0; j < array_length(additions); j++) {
		var pass1 = moderators[i] + additions[j];
		array_push(valid_passwords, pass1);
		if (typed == pass1) matched_moderator = moderators[i];

		for (var k = 0; k < array_length(additions); k++) {
			var pass2 = moderators[i] + additions[j] + additions[k];
			array_push(valid_passwords, pass2);
			if (typed == pass2) matched_moderator = moderators[i];
		}
	}
}

// Prompt for password
var typed_password = typed;

// Check if the typed password is in the valid_passwords array
var is_valid = false;
for (var k = 0; k < array_length(valid_passwords); k++) {
	if (typed_password == valid_passwords[k]) {
		if (keyboard_check_pressed(vk_enter)) {
			is_valid = true;
		}
		break;
	}
}

// Respond based on password validity
if (is_valid)
{
	if (file_exists("progressFileDefault.bstrn"))
	{
		if !fading
		{
			fading = true;
			currenttext = "Welcome, " + string_upper(matched_moderator) + "!";
			loadFile(false,false);
			alarm[0] = room_speed
		}
	}
	else 
	{
		if (keyboard_check_pressed(vk_enter)) currenttext = "Please get a save file.";
	}
}
else
{
	if (keyboard_string != "" && keyboard_check_pressed(vk_enter))
	{
			currenttext = "Sorry, incorrect.";
	}
}