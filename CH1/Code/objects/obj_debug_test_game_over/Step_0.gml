image_alpha = 0.5

// Check if the mouse is over the object, using position_meeting
if (position_meeting(mouse_x, mouse_y, id)) {
   image_xscale -= (image_xscale - original_size_x * 1.2) / 5
   image_yscale -= (image_yscale - original_size_y * 1.2) / 5
   if mouse_check_button(mb_left)
	{
		audio_stop_all()
		room_goto(cts_game_over)
   }
}
else
{
	image_xscale -= (image_xscale - original_size_x) / 5
    image_yscale -= (image_yscale - original_size_y) / 5
}

image_angle = random_range(-1.1,1.1)