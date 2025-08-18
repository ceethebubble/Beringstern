// Check if the mouse is over the object, using position_meeting
if (position_meeting(mouse_x, mouse_y, id)) {
   image_xscale -= (image_xscale - original_size_x * 1.2) / 5
   image_yscale -= (image_yscale - original_size_y * 1.2) / 5
   if mouse_check_button(mb_left)
	{
		if image_angle = -90
		{
			global.DEBUGxOffset += 2
		}
		if image_angle = 90
		{
			global.DEBUGxOffset -= 2
		}
		if image_angle = 180
		{
			global.DEBUGyOffset += 2
		}
		if image_angle = 0
		{
			global.DEBUGyOffset -= 2
		}
   }
}
else
{
	image_xscale -= (image_xscale - original_size_x) / 5
    image_yscale -= (image_yscale - original_size_y) / 5
}