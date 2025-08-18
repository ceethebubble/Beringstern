// Inherit the parent event

if image_alpha >= 1
	event_inherited();
	
if (point_distance(x, y, obj_player.x, obj_player.y) <= 20)
	global.stylishPoints += 0.25

image_xscale = lerp(image_xscale, target_scale, scale_speed);

if changing && !instance_exists(obj_hazard_laser_ball)
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
	if instance_exists(obj_battle_enemy_2)
	{
		// Get the difference
		var diff = angle_difference(image_angle, point_direction(obj_battle_enemy_2.x,obj_battle_enemy_2.y,obj_player.x,obj_player.y));
		
		// Determine if player is to the left or right
		if (diff < 0) {
		    angledir = -0.25
		} else {
		    angledir = 0.25
		}
	}
	image_alpha += 0.03
	if image_alpha >= 1
		changing = true;
	if instance_exists(obj_hazard_laser_ball)
	{
		x += lengthdir_x(15, image_angle);
		y += lengthdir_y(15, image_angle);
	}
}
	
image_yscale = 2 / image_xscale
if instance_exists(obj_hazard_laser_ball)
	image_yscale = 1

if timer2 > 0
	timer2 -= 1

if instance_exists(obj_battle_enemy_2)
	x += xchange

if instance_exists(obj_battle_enemy_2)
	if obj_battle_enemy_2.sparing or obj_battle_enemy_2.dying
		instance_destroy()