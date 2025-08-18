depth = -y

time_ += 1 / room_speed
var ynext = 256 + (sin(time_) * 40)
if (place_free(x, ynext)) && not dying and not sparing
{
	y = ynext
}
else
{
	time_ -= 1 / room_speed
}

if introDone
{

if green > 1 and not sparing
{
	image_index = 0
	image_speed = 1
	audio_play_sound(sfx_enemy_3_spare,0,false)
	sparing = true
	sprite_index = spr_enemy_4_spare
	global.cutscene = true;
	alarm[5] = 2 * room_speed
}

if not dying and not sparing
{

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
			}
		}
	}

	sprite_index = spr_enemy_4_idle;
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

}

if global.opponent_hp <= 0 and not dying
{
	dying = true
	sprite_index = spr_enemy_4_kill
	image_index = 0
	image_speed = 1
	play_sfx(sfx_enemy_3_kill)
	alarm[4] = 2 * room_speed
	global.cutscene = true;
}

}
else
{
	if image_index >= image_number - 1
	{
		image_speed = 0;
	}
}

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

if sparing or dying or introDone = false
	camera_zoom += ((1.5 - camera_zoom) / 4);
else
	camera_zoom += ((1 - camera_zoom) / 4);

// Set the camera position
camera_set_view_pos(view_camera[0], camx - (camWidth * 0.5) / camera_zoom, camy - (camHeight * 0.5) / camera_zoom);
// Apply zoom to the camera
camera_set_view_size(view_camera[0], camWidth / camera_zoom, camHeight / camera_zoom);