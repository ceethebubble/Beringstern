x = 1024
y = 256
image_xscale = 0.6
image_yscale = 0.6

timer = 0
cooldown = 0.5
damage = 10
global.ending = 0
draining = 0
dying = false
time_ = 0

// Patrol settings
move_speed = 4;
move_direction = 1; // 1 = right, -1 = left
last_direction = 1; // previous direction.

// Patrol range
start_x = x;
patrol_distance = 256; // How far left/right to move
move_in_progress = false;


//CUTSCENE

introDone = false
alarm[3] = 2.2 * room_speed
camWidth = 2049;
camHeight = 1152;
camera_zoom = 1;
camx = 0
camy = 0
global.cutscene = true;
minX = (camWidth * 0.5) / camera_zoom;
minY = (camHeight * 0.5) / camera_zoom;
maxX = room_width - (camWidth * 0.5) / camera_zoom;
maxY = room_height - (camHeight * 0.5) / camera_zoom;
laserball = instance_create_depth(x + 60,y + 30,depth,obj_hazard_laser_ball)
laserball.enemy4introcutscene = true
laserball.enemy4 = true

playerpush = 0;
isplayerpushed = false;

//spare

sparing = false
green = 0