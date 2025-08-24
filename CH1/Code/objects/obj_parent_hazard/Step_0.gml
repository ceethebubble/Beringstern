if place_meeting(x, y, obj_player) and timer <= 0
{
	global.hp -= damage;
	global.stylishPoints -= 10
	draining = drain
	play_sfx(sfx_hurt)
	timer = cooldown
}

var styleRad = 30
if variable_instance_exists(self,"styleRadius") styleRad = styleRadius

if (point_distance(x, y, obj_player.x, obj_player.y) <= styleRad)
	global.stylishPoints += 0.25

if timer > 0
	timer -= 1 / room_speed

if draining > 0
{
	global.stylishPoints -= 0.25
	draining -= 1 / room_speed
}

if instance_exists(obj_battle.battle_object)
{
	var shouldDestroy = false
	with (obj_battle.battle_object)
	{
		if sparing or dying shouldDestroy = true
	}
	if shouldDestroy instance_destroy()
}