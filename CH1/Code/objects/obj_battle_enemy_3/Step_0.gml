depth = -y

if place_meeting(x,y,obj_hazard_laser) green += 0.01
if global.opponent_maxhp != global.opponent_hp green = 0

time_ += 1 / room_speed

if green > 0.8 and not sparing
{
	image_index = 0
	image_speed = 1
	audio_play_sound(spare_sound,0,false)
	sparing = true
	sprite_index = spare_sprite
	global.cutscene = true;
	alarm[5] = 2 * room_speed
}

if not dying and not sparing
{

	if timer > 0
		timer -= 1/room_speed
		
	scr_ai()

	// Sprite Handling
	if !attacking
	{
		sprite_index = idle_sprite;
	}

	if image_index >= image_number - 1 && sprite_index = attack_sprite
	{
		sprite_index = idle_sprite
		image_index = 0
		alarm[1] = room_speed;
	}

}

if global.opponent_hp <= 0 and not dying
{
	dying = true
	attacking = false;
	sprite_index = kill_sprite
	image_index = 0
	image_speed = 1
	play_sfx(kill_sound)
	alarm[4] = 2 * room_speed
	global.cutscene = true;
}

if sparing or dying
{
	if (object_exists(obj_parent_hazard)) {
        with (obj_parent_hazard) {
            instance_destroy();
        }
    }
	
	green = 0
	if image_index >= image_number - 1
	{
		image_speed = 0;
	}
	
	camera_zoom += ((1.5 - camera_zoom) / 4);
    // Smooth camera movement
    camx += (enemy_x - camx) / 12
    camy += (enemy_y - camy) / 12


	// Recalculate boundaries based on zoom
    minX = (camWidth * 0.5) / camera_zoom;
    minY = (camHeight * 0.5) / camera_zoom;
    maxX = room_width - (camWidth * 0.5) / camera_zoom;
    maxY = room_height - (camHeight * 0.5) / camera_zoom;
	
    // Apply boundaries
    camx = clamp(enemy_x, minX, maxX);
    camy = clamp(enemy_y, minY, maxY);

    // Set the camera position
   camera_set_view_pos(view_camera[0], camx - (camWidth * 0.5) / camera_zoom, camy - (camHeight * 0.5) / camera_zoom);

    // Apply zoom to the camera
   camera_set_view_size(view_camera[0], camWidth / camera_zoom, camHeight / camera_zoom);
}