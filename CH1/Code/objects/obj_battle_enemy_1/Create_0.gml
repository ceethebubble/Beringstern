x = 1024
y = 256
image_xscale = 0.35
image_yscale = 0.35

timer = 0
cooldown = 0.5
damage = 10
global.ending = 0
draining = 0
attacking = false
dying = false

// Patrol settings
move_speed = 4;
move_direction = 1; // 1 = right, -1 = left
last_direction = 1; // previous direction.

// Patrol range
start_x = x;
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

green = 0
sparing = false

//dialogue

alarm[6] = random_range(4,12) * room_speed