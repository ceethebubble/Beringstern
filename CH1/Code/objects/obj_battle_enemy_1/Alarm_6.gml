if not sparing and not dying
{
	if choose(1,2) = 1
	{
		makeDialogSound(vl_enemy_1_01)
		start_dialogue("enemy1", "OBJECTIVE``````` FROM```````` BUBBLE``````BLIGHT", "normal", 0.50,false,true,4)
	}
	else
	{
		makeDialogSound(vl_enemy_1_02)
		start_dialogue("enemy1", "DES``TROY```` ENEMY``````````` DES``TROY````````` ALL```` PEO```PLE", "normal", 0.50,false,true,4)
	}
	
	alarm[6] = random_range(8,12) * room_speed
}