background = "overworldg" // the background sprite
music = msc_enemyt_overworld // the music
battle_object = obj_battle_parent // the battle object
opponent_name = "Test Battle" // the opponent's name!
global.opponent_maxhp = 100 // the opponent's MAX HP!
opponent_icon_sprite = spr_dialog_enemy_0
global.playerx = 1024 // player x!
global.playery = 650 // player y!

global.battletime = 9 // average time (in seconds) to beat it in
global.styleGoal = 20 // the goal for style points

scr_battlegroups()

//but here is the config and stuff ;-;

audio_stop_all() // i make the other music stop. but don't worry, they will come back! :D
audio_play_sound(music,0,true) // starts the awesome music. yay!!!!
audio_sound_gain(music,0.2,0) // quietly lowers the music
depth = 100 // makes it like a background
instance_create_depth(x,y,0,battle_object) // creates the battle object!
global.timeSpent = 0 // time spent in battle!

//other

guialpha = 1
guidown = 0

hpPercent = 1
hpChange = global.hp

global.opponent_hp = global.opponent_maxhp
hpOpponentPercent = 1
hpOpponentChange = global.opponent_hp

global.stylishPoints = 0

global.did_screenshot = false

volume = 1

fading = 0

application_surface_draw_enable(false)
if instance_exists(obj_player) with obj_player sprite_index = up

// a bunch of player avatar

avatarBaseR = global.avatarR;
avatarBaseG = global.avatarG;
avatarBaseB = global.avatarB;

avatarOutlineR = global.outlineAvatarR;
avatarOutlineG = global.outlineAvatarG;
avatarOutlineB = global.outlineAvatarB;

avatarFaceR = global.faceAvatarR
avatarFaceG = global.faceAvatarG
avatarFaceB = global.faceAvatarB

avatarShoeR = global.shoeAvatarR
avatarShoeG = global.shoeAvatarG
avatarShoeB = global.shoeAvatarB
