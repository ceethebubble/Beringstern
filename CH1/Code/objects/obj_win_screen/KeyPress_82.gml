if global.debug
{
	global.hp = global.maxhp
	global.debug = true;
	global.battlegroup = 0;
	room_goto(rm_battle)
}