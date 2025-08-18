if alpha = "in"
{
	image_alpha += 0.05;
}

if image_alpha > 1
{
	step += 1
	if step >= 50
	{
		alpha = "out"
	}
}

if alpha = "out"
{
	image_alpha -= 0.05;
}

if alpha = "out" && image_alpha = 0
{
	fade_to_room(rm_menu)
}