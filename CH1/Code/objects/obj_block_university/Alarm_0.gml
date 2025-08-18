if dialog > 0
{
	if not (dialog == 6 and chosen = 0)
	{
		dialog += 1
	}

	global.cutscene = true;
	
	switch (global.flags[0])
	{
		case 0:	
			get_dialog("hoot")
			break;
		default:
			get_dialog("hoot01")
			break;
	}

}