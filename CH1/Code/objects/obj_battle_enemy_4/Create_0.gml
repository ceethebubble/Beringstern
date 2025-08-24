x = 1024
y = 256
image_xscale = 0.7
image_yscale = 0.7
attack_offset = 30
intro_sprite = spr_enemy_4_intro
intro_length = (27/10) // in seconds
idle_sprite = spr_enemy_4_idle
attack_sprite = spr_enemy_4_idle
spare_sprite = spr_enemy_4_spare
spare_sound = sfx_enemy_1_spare
kill_sprite = spr_enemy_4_kill
kill_sound = sfx_enemy_3_kill

scr_enemy_create()

if get_json_file(string(global.aiPath),"intro")
{
	global.musPlay = true
	sprite_index = intro_sprite
	alarm[3] = intro_length * room_speed
}
else
{
	sprite_index = idle_sprite
}

//DON'T CHANGE!

timer = 0
global.ending = 0
draining = 0
attacking = false
dying = false
time_ = 0
enemy_x = x
enemy_y = y
introDone = false

// Patrol settings
scr_setup_ai()

// Patrol range
start_x = x;
start_y = y;
patrol_distance = 256; // How far left/right to move
move_in_progress = false;
chosen = -1

//CUTSCENE

camWidth = 2049;
camHeight = 1152;
camera_zoom = 1;
camx = 0
camy = 0

minX = (camWidth * 0.5) / camera_zoom;
minY = (camHeight * 0.5) / camera_zoom;
maxX = room_width - (camWidth * 0.5) / camera_zoom;
maxY = room_height - (camHeight * 0.5) / camera_zoom;

playerpush = 0;
isplayerpushed = false;

//spare

sparing = false
green = 0