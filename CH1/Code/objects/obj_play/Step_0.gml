// Ensure sprite_index is set to your sprite

sprite_index = spr_play; 
frame_index += 0.3;
if frame_index > 2 frame_index = 0;

if (gamepad_button_check(0, gp_face1)) {
	fade_to_room(rm_profile)
	gamepad_set_vibration(0, 0.5, 0.5);
}

if mouseHover then
{
	image_xscale += (scale_hover - image_xscale) / 5;
	image_yscale += (scale_hover - image_yscale) / 5;
}
else
{
	image_xscale += (scale_normal - image_xscale) / 5;
	image_yscale += (scale_normal - image_yscale) / 5;
}


//-------------
if (keyboard_check_pressed(vk_escape)) {
    // Resize the window to a smaller size (e.g., 200x200)
    window_set_size((window_get_width()) + ((200 - window_get_width())) / 4, (window_get_height()) + ((200 - window_get_height())) / 4);

    // Optional: Pause briefly to let the resize effect be noticeable
    alarm[0] = room_speed / 3; // Set a brief delay using an alarm (e.g., 0.5 seconds)
}

if file_exists("mail inbox 1 - larry.bstnm")
{
	show_message("Larry Larry Larry Larry Larry Larry Larry Larry Larry Larry Larry Larry Larry Larry Larry Larry Larry Larry Larry Larry Larry Larry Larry Larry Larry Larry Larry Larry Larry Larry Larry Larry Larry Larry Larry Larry Larry Larry Larry ")
	file_delete("mail inbox 1 - larry.bstnm")
	game_end()
}





//MAIL THING

// Folder where mail files are stored
var _mail_folder = "mail/";

// Ensure the folder exists (create it if it doesn't exist)
if (!directory_exists(_mail_folder)) {
    directory_create(_mail_folder);
}

// Check for mail files
var _files = file_find_first(_mail_folder + "*.bstnm", fa_directory);
if (_files != "") {
    // If any file is found, notify the player
    show_debug_message("You have mail!");
    
    // Loop through all `.bstrm` files
    while (_files != "") {
		var _file_path = _mail_folder + _files; // Full path to the file
        var _mail_content = file_text_open_read(_mail_folder + _files);
        var _message = file_text_read_string(_mail_content);
        file_text_close(_mail_content);
        
        // Show the file name or content
		
		if !shownMAIL
		{
		  textToShow = "You have mail!\nMail file: " + _files + "\n" + "Content: " + _message + "\nPress enter to continue.";
		}
		if !shownMAIL
		{
			file_delete(_file_path);
		}
        // Move to the next file
		
		shownMAIL = true;
		_files = file_find_next();
    }
    file_find_close();
}