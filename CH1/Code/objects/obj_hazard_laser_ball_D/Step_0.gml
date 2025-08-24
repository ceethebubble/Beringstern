var introdone = true
with (obj_battle_parent)
{
	if variable_instance_exists(self,"introDone")
	{
		if !introDone introdone = false
	}
}

if !introdone
{
	if speedy > -20
	{
		y += speedy
		speedy += .5
	}
}
else
{
	// Inherit the parent event
	event_inherited();
	if !shouldHaveDestroyed
	{
		if !setposition
		{
			if instance_exists(obj_player) with obj_player sprite_index = down
			y = global.playerx - 150
			setposition = true
		}
		move_towards_point(global.playerx,global.playery,mspeed)
		mspeed += 0.1
		if mspeed > 4
			mspeed = 4
	}
	else
	{
		if !obj_battle.battle_object.dying
			move_towards_point(obj_battle.battle_object.x+get_json_file(string(global.aiPath),"intro-X"),obj_battle.battle_object.y+get_json_file(string(global.aiPath),"intro-Y"),2)
	}
}
depth = -9999999

image_xscale += (0.4 - image_xscale) / 5
image_yscale += (0.4 - image_yscale) / 5