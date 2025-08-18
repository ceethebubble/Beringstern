if steps > 30 && !global.cutscene
{
	steps = 0
	global.battlegroup = choose(1,2,3)
	start_encounter()
}