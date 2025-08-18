image_alpha = 1;
image_speed = 0;
if !file_exists("progressFileDefault.bstrn")
{
	global.playerx = x
	global.playery = y
	global.room = room;
}

if room = rm_battle
{
	global.bplayerx = global.playerx
	global.bplayery = global.playery
	global.playerx = x
	global.playery = y
}

if room != rm_battle && file_exists("progressFileDefault.bstrn")
{
	global.playerx = global.bplayerx
	global.playery = global.bplayery
}

// Set position
x = global.playerx;
y = global.playery;

playerWalkSpeed = 5.5;
image_yscale = 0.8;
image_xscale = 0.8;
collisionSpeed = playerWalkSpeed + 6;
shader_reset()
global.cutscene = false;

character = "bubble"
run = spr_player_run
left = spr_player_left_right
right = spr_player_left_right
up = spr_player_up
down = spr_player_down
sleep = spr_player_sleep
get_up = spr_player_get_up

makeCharacterAnimations()

sprite_index = down

showKey = false;
enterSize = 0.5;

punch = false

decuts = false

// --- AVATAR COLOR SETTINGS ---
avatarBaseR = global.avatarR;
avatarBaseG = global.avatarG;
avatarBaseB = global.avatarB;

avatarOutlineR = global.outlineAvatarR;
avatarOutlineG = global.outlineAvatarG;
avatarOutlineB = global.outlineAvatarB;

avatarFaceR = global.faceAvatarR;
avatarFaceG = global.faceAvatarG;
avatarFaceB = global.faceAvatarB;

avatarShoeR = global.shoeAvatarR;
avatarShoeG = global.shoeAvatarG;
avatarShoeB = global.shoeAvatarB;