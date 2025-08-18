// Inherit the parent event
event_inherited();

if enemyY > -720 and enemyY < (-120 - obj_player.sprite_height)
	enemyY += 5
	
if enemyY >= (-120 - obj_player.sprite_height) && not battling
{
	battling = true
	alarm[1] = room_speed
	alarm[2] = 0.5 * room_speed
}

if global.flags[3] image_alpha = 0