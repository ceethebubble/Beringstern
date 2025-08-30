depth = -y
if not dying and not sparing
{
	if (point_distance(x, y, obj_player.x, obj_player.y) <= (obj_player.sprite_width * 1.2))
	{
		if !(global.opponent_hp < global.opponent_maxhp)
		{
			if !audio_is_playing(sfx_charge) audio_play_sound(sfx_charge,0,false)
			green += 0.005
		}
		else
		{
			audio_stop_sound(sfx_charge)
			green -= 0.01
		}
		global.stylishPoints += 0.25
	}
	else
	{
		audio_stop_sound(sfx_charge)
		green -= 0.002
	}

	if timer > 0
		timer -= 1/room_speed

	// Move enemy
	// Movement
	if (move_direction != 0) {
		last_direction = move_direction;

		var next_x = x + move_speed * move_direction;
		
		if (place_free(next_x, y)) {
			x = next_x;
		} else {
			if (!move_in_progress) {
				move_in_progress = true;
				move_direction = 0;
				alarm[0] = room_speed * random_range(0.3, 0.8);
			}
		}
	}


	// Sprite Handling
	if !attacking
	{
		if (move_direction == 0)
		{
			sprite_index = spr_enemy_1_idle;
			
			if global.opponent_hp < (global.opponent_maxhp / 2)
				sprite_index = spr_enemy_1_idle_damage
		}
		else
		{
			sprite_index = spr_enemy_1_walk;
		}
	}

	// Switch direction at patrol edges
	if (x >= start_x + patrol_distance and move_direction = 1) or (x <= start_x - patrol_distance and move_direction = -1)
	{
		if (!move_in_progress) {
			move_in_progress = true;
			last_direction = move_direction;
			move_direction = 0;
			alarm[0] = room_speed * random_range(0.5, 1.5); // pause before turning
		}
	}

	if image_index >= 89 && sprite_index = spr_enemy_1_attack
	{
		sprite_index = spr_enemy_1_idle
		image_index = 0
		alarm[1] = room_speed;
	}

}
else
{
	audio_stop_sound(sfx_charge)
}

if global.opponent_hp <= 0 and not dying
{
	dying = true
	attacking = false;
	sprite_index = spr_enemy_1_kill
	image_index = 0
	image_speed = 1
	play_sfx(sfx_enemy_1_kill)
	alarm[4] = 6 * room_speed
	global.cutscene = true;
}

if green > 1 and not sparing
{
	play_sfx(sfx_enemy_1_spare)
	sparing = true
	attacking = false
	sprite_index = spr_enemy_1_spare
	image_index = 0
	image_speed = 1
	global.cutscene = true;
	alarm[5] = 3 * room_speed
}

if dying
{
	if image_index >= 21
	{
		depth = -99999
		if !isplayerpushed
			playerpush = global.playery + 200
		isplayerpushed = true;
		global.playery += (playerpush - global.playery) / 5
	}
	if image_index >= image_number - 1
	{
		image_alpha = 0;
	}
}

if sparing or dying
{
	if image_index >= image_number - 1
	{
		image_speed = 0;
	}
	
	camera_zoom += ((1.5 - camera_zoom) / 4);
    // Smooth camera movement
    camx += (x - camx) / 12
    camy += (y - camy) / 12


	// Recalculate boundaries based on zoom
    minX = (camWidth * 0.5) / camera_zoom;
    minY = (camHeight * 0.5) / camera_zoom;
    maxX = room_width - (camWidth * 0.5) / camera_zoom;
    maxY = room_height - (camHeight * 0.5) / camera_zoom;
	
    // Apply boundaries
    camx = clamp(x, minX, maxX);
    camy = clamp(y, minY, maxY);

    // Set the camera position
   camera_set_view_pos(view_camera[0], camx - (camWidth * 0.5) / camera_zoom, camy - (camHeight * 0.5) / camera_zoom);

    // Apply zoom to the camera
   camera_set_view_size(view_camera[0], camWidth / camera_zoom, camHeight / camera_zoom);
}

if dying or sparing
{
	if instance_exists(obj_hazard_beam)
		instance_destroy(obj_hazard_beam)
	if instance_exists(obj_dialogue)
		instance_destroy(obj_dialogue)
}