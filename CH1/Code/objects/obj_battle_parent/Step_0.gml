depth = -y

if (point_distance(x, y, obj_player.x, obj_player.y) <= (obj_player.sprite_width * 0.8))
{
    global.stylishPoints += 0.25
}

if timer > 0
	timer -= 1/room_speed

if draining > 0
{
	show_debug_message("Draining stylish points... " + string(global.stylishPoints))
	global.stylishPoints -= 0.25
	draining -= 1 / room_speed
}


// REMOVE THE FOLLOWING... JUST FOR A TEST!

if global.opponent_hp <= 0 global.ending = 1; //instead of this, use a cutscene

var left = x - sprite_width/2 - 5;
var top = y - sprite_height - 5;
var right = x + sprite_width/2 + 5;
var bottom = y;

if (collision_rectangle(left,top,right,bottom, obj_player, false, true)) and timer == 0
{
	global.stylishPoints -= 10
	draining = 1
	global.hp -= damage;
	play_sfx(sfx_hurt)
	timer = cooldown
}