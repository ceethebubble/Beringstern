if showText
{
	showText = false
	questionPressed = false
	easingthing = 81
	if global.tutorial_progress = 0
	{
		global.tutorial_progress = 1
	}
	give_money(random_range(global.level + 2,(global.level + 2) * 4),random_range(100,room_width-100),random_range(100,room_height-100))
}