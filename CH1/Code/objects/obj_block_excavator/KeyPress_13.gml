if box == true and chosen == "yes"
{
	box = false;
	alarm[2]=0.5*room_speed;
	hover = false;
}
if box == true and chosen == "no"
{
	box = false;
	hover = false;
	global.cutscene = false;
}

if excavatorYeah
{
	excavatorYeah = false;
	global.cutscene = false;
	obj_player.image_alpha = 1;
}