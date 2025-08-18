// STEP EVENT
if (instance_exists(follow)) {
    //xTo = obj_player.x;
   // yTo = obj_player.y;
   
	if (keyboard_check(vk_space))
	{
		camera_zoom += ((0.5 - camera_zoom) / 4);
		if camera_zoom < 0.5
		{
			camera_zoom = 0.5;
		}
	}
	else
	{
		camera_zoom += ((0.55 - camera_zoom) / 4);
		if camera_zoom > 0.55
		{
			camera_zoom = 0.55
		}
	}
   
   xTo = follow.x;
   yTo = follow.y;

    // Smooth camera movement
    x += (xTo - x) / 12
    y += (yTo - y) / 12


	// Recalculate boundaries based on zoom
    minX = (camWidth * 0.5) / camera_zoom;
    minY = (camHeight * 0.5) / camera_zoom;
    maxX = room_width - (camWidth * 0.5) / camera_zoom;
    maxY = room_height - (camHeight * 0.5) / camera_zoom;
	
    // Apply boundaries
    x = clamp(x, minX, maxX);
    y = clamp(y, minY, maxY);

    // Set the camera position
   camera_set_view_pos(view_camera[0], x - (camWidth * 0.5) / camera_zoom, y - (camHeight * 0.5) / camera_zoom);

    // Apply zoom to the camera
   camera_set_view_size(view_camera[0], camWidth / camera_zoom, camHeight / camera_zoom);
	
}