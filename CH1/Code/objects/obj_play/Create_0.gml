// Create Event of obj_title
start_time = current_time; // Record the current time
duration = 5; // Duration in seconds
alpha = 0; // Initial alpha

// Set the animation speed
image_speed = 0.4; // Adjust the speed as needed
frame_index = 0;

// Create Event
fade_out = false;
fade_time = 100; // Duration of the fade out in steps
fade_step = 1 / fade_time;
scale_normal = 0.13;
scale_hover = 0.138;
mouseHover = false;
global.sounddialog = sfx_nope;
global.rating = "T";
global.debug = false;
global.money = 0;
global.room = rm_workstation

global.strength = 0;
global.speed = 0;
global.toughness = 0;

global.avatar = shdr_player_red;
global.name_of_avatar = "character red";
global.dialogging = false;
global.job = "construction";
global.char_index = 0;
global.shader = shdr_daynight

global.tutorial_progress = 0;
global.inventory_space = 8;
global.inventory_slot = 1;

global.inventory = ds_list_create();
global.voicelines = "on"
global.stylishPoints = 0
global.musPlay = false
scr_flags()

textToShow = ""

config_load_json()

shownMAIL = false;

avatarBaseR = 1.0;
avatarBaseG = 0.3;
avatarBaseB = 0.5;

avatarOutlineR = 0.8;
avatarOutlineG = 0.29;
avatarOutlineB = 0.5;

avatarFaceR = 0.0
avatarFaceG = 0.3
avatarFaceB = 0.5

avatarShoeR = 0.0
avatarShoeG = 0.3
avatarShoeB = 0.5

global.avatarR = avatarBaseR
global.avatarG = avatarBaseG
global.avatarB = avatarBaseB

global.outlineAvatarR = avatarOutlineR
global.outlineAvatarG = avatarOutlineG
global.outlineAvatarB = avatarOutlineB

global.faceAvatarR = avatarFaceR
global.faceAvatarG = avatarFaceG
global.faceAvatarB = avatarFaceB

global.shoeAvatarR = avatarShoeR
global.shoeAvatarG = avatarShoeG
global.shoeAvatarB = avatarShoeB

global.musicsnd = msc_overworld

global.hp = 100
global.maxhp = 100

global.bplayerx = 100
global.bplayery = 100
	
global.playerx = 50
global.playery = 50

global.opponent_hp = 100
global.opponent_maxhp = 100

global.battlegroup = 0
global.styleGoal = 20
global.aiPath = ""

global.gameTime = current_hour + (current_minute / 60)

if (file_exists("progressFileDefault.bstrn"))
	loadFile(false,false)
	
if global.flags[2]
	window_set_fullscreen(true)
	
if (!file_exists("main.ini"))
{
	ini_open("main.ini");
	ini_write_real("Menu", "Debug", 0);
	ini_close();
}

surface_resize(application_surface, 1366, 768);
if !instance_exists(obj_gameControl) instance_create_depth(0,0,0,obj_gameControl)