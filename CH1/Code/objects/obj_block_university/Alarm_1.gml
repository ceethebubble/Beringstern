if global.job = "proffesor"
{
	global.cutscene = false
	fade_to_room(rm_proffesor)
}
else
{
	global.cutscene = true;
	dialog = 1;
	if global.flags[0] = 0
	{
		get_dialog("hoot")
	}
	else
	{
		get_dialog("hoot01")
	}
}