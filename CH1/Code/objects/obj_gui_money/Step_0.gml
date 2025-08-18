if draw_stuff
{
	if scale < 0.3
	{
		scale += (0.35 - scale) / 5
	}
	else
	{
		alpha -= 0.05
		if alpha = 0
		{
			saveFile()
			instance_destroy()
		}
	}
}