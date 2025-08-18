if (global.ending != 0 && !global.did_screenshot)
{
	show_debug_message("Time: " + string(global.timeSpent))
	show_debug_message("Style/Stylish Points: " + string(global.stylishPoints))
	global.did_screenshot = true;
	alarm[1] = 2

	/*
	var view_w = camera_get_view_width(view_camera[0]);
	var view_h = camera_get_view_height(view_camera[0]);

	global.room_screenshot = surface_create(view_w, view_h);
	
    surface_set_target(global.room_screenshot);
    draw_clear_alpha(c_black, 0);
    draw_self(); // OR draw everything manually!
    surface_reset_target();

    global.did_screenshot = true;
    room_goto(cts_win_screen);
	*/
}