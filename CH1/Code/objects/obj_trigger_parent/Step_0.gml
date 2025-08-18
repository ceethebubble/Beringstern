if (touched = 1)
{
	image_alpha -= 0.05;
}

if place_meeting(x+obj_player.collisionSpeed,y+obj_player.collisionSpeed,obj_player) or place_meeting(x-obj_player.collisionSpeed,y-obj_player.collisionSpeed,obj_player)
{
	if (touched == 0)
	{
		image_index = 1;
		alarm[0] = 1;
		touched = 1;
	}
}