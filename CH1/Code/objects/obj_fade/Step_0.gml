if (state == fade_in) 
{
	image_alpha += fade_speed;
	if (image_alpha >= 1)
	{
		image_alpha = 1;
		state = fade_out;
		room_goto(roomtrans);
		if playerchangepos
		{
			global.room = room
			global.playerx = xgoing
			global.playery = ygoing
			global.bplayerx = xgoing
			global.bplayery = ygoing
		}
	}
}
else if (state == fade_out) 
{
	image_alpha -= fade_speed;
	if (image_alpha <= 0)
	{
		global.cutscene = false;
		image_alpha = 0;
		instance_destroy();
	}
}