image_xscale = lerp(image_xscale, target_scale, scale_speed);

if changing
{
	if timer2 < 6
	{
		image_angle += angledir
		audio_stop_sound(sfx_dong)
		play_sfx(sfx_dong)
		if timer2 == 0
			timer2 = 10
		image_alpha = 0.01
	}
	else
	{
		image_alpha = 1
	}
	angledir += (angledir/35)
}
else
{	
	// Get the difference
	var diff = angle_difference(image_angle, point_direction(obj_battle_enemy_2.x,obj_battle_enemy_2.y,obj_player.x,obj_player.y));
	
	// Determine if player is to the left or right
	if (diff < 0) {
	    angledir = -0.5
	} else {
	    angledir = 0.5
	}
	image_alpha += 0.03
	if image_alpha >= 1
		changing = true;
}
	
image_yscale = 2 / image_xscale

if timer2 > 0
	timer2 -= 1

x += xchange