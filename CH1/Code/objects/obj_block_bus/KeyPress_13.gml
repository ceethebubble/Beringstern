if box == true and chosen == "yes"
{
	box = false;
	alarm[1]=0.5*room_speed;
	hover = false;
}
if box == true and chosen == "no"
{
	box = false;
	hover = false;
	global.cutscene = false;
}