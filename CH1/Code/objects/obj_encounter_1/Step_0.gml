if steps > 70 && !global.cutscene
{
	steps = 0
	global.battlegroup = choose(1,2,3,4)
	start_encounter()
}