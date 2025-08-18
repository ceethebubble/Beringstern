// change!
damage = 5 // how much damage
cooldown = 0.5 // in seconds, the cooldown
drain = 0.5 // how long to drain style points
styleRadius = 40 // how big the style points radius is
image_angle = point_direction(x,y,obj_player.x,obj_player.y) + 100
image_xscale = 0;
image_yscale = 1;
target_scale = 4; // how big you want it to get
if instance_exists(obj_hazard_laser_ball)
	target_scale = 0.5;
scale_speed = 0.1; // how fast it gets there
image_alpha = 0.4
if instance_exists(obj_hazard_laser_ball)
{
	image_angle = image_angle - 100
	sprite_index = spr_hazard_laser_white
	image_blend = make_color_hex("FFC789")
}
else
{
	image_blend = c_white
}
changing = false;
xchange = 0
angledir = 0.25
alarm[2] = room_speed * 1.4
alarm[1] = room_speed * 0.4
alarm[0] = room_speed * 0.8
audio_play_sound(sfx_laser,0,false)

if !instance_exists(obj_battle_enemy_2)
{
	if instance_exists(obj_hazard_laser_ball)
		alarm[3] = 10 * room_speed
	else
		alarm[3] = 2 * room_speed
}

// do NOT change!
timer = 0
timer2 = 10
draining = 0