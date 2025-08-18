	var view_w = camera_get_view_width(view_camera[0]);
	var view_h = camera_get_view_height(view_camera[0]);
	
	if (surface_exists(global.room_screenshot)) {
	    surface_free(global.room_screenshot);
	}
	
	global.room_screenshot = surface_create(view_w, view_h);
	
	surface_set_target(global.room_screenshot);
	draw_clear_alpha(c_black, 0);
	
	// Draw the full screen as it is currently rendered
	draw_surface(application_surface, 0, 0);
	
	surface_reset_target();
	
	alarm[0] = 2