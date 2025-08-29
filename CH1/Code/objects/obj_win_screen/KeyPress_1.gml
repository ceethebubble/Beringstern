if (showResults) and (fading == 0)
{
	if global.battlegroup == 5
	{
		if global.ending = 2
		{
			fade_to_room(rm_spawn)
			global.playerx = 448
			global.playery = 1344
		}
		else
		{
			start_encounter()
		}
	}
	else
	{
		fade_to_room(global.room)
	}
	fading = 1
}