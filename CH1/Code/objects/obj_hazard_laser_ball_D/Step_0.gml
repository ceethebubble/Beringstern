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
	depth = -9999
	
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
	if !setposition
	{
		if instance_exists(obj_player) with obj_player sprite_index = down
		y = global.playerx - 150
		setposition = true
	}
	depth = -y
	move_towards_point(global.playerx,global.playery,mspeed)
	mspeed += 0.1
	if mspeed > 8
		mspeed = 8
}

image_xscale += (0.4 - image_xscale) / 5
image_yscale += (0.4 - image_yscale) / 5