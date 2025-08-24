if !global.cutscene{
	if hover
	{
	   // Blend the sprite color towards white
	   image_blend = make_color_rgb(255, 240, 255);
	}
	else
	{
	    // Reset to the original color with full opacity
	    image_blend = c_white; // Assuming the original color is unblended
	}
}
else
{
		image_blend = c_white;
}