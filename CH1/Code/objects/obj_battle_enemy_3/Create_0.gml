x = 1024
y = 256
image_xscale = 0.35
image_yscale = 0.35
attack_offset = 30
idle_sprite = spr_enemy_3_idle
attack_sprite = spr_enemy_3_attack
spare_sprite = spr_enemy_3_spare
spare_sound = sfx_enemy_3_spare
kill_sprite = spr_enemy_3_kill
kill_sound = sfx_enemy_3_kill

//DON'T CHANGE!

timer = 0
global.ending = 0
draining = 0
attacking = false
dying = false
time_ = 0
enemy_x = x
enemy_y = y

// Patrol settings
scr_setup_ai()

// Patrol range
start_x = x;
start_y = y;
patrol_distance = 256; // How far left/right to move
move_in_progress = false;

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