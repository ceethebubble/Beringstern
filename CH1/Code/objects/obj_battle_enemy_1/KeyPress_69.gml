if encounterDialog = 5
{
	if instance_exists(obj_dialogue) instance_destroy(obj_dialogue)
	encounterDialog = 10000
	start_dialogue("cee","I mean, not now since you're in a cutscene.","goofy",.5,false,true,3)
	alarm[8] = 3 * room_speed
}