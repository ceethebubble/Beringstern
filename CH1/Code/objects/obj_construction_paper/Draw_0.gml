if global.flags[9] == false
{
	image_xscale += 0.2
	image_yscale += 0.2
	image_alpha = 0.2
	draw_self()
	image_alpha = 1
	image_xscale -= 0.2
	image_yscale -= 0.2
}
draw_self()