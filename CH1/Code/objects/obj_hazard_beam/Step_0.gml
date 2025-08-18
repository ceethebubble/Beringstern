// Inherit the parent event

if image_alpha >= 1
	event_inherited();
	
if (point_distance(x, y, obj_player.x, obj_player.y) <= 20)
	global.stylishPoints += 0.25

if image_xscale > 5
	image_xscale = 5
else if image_xscale < 5
{
	image_xscale = lerp(image_xscale, target_scale, scale_speed);
}

if (changing)
	image_alpha -= 0.2
else
	image_alpha += 0.035
	
if image_alpha <= 0 or global.ending > 0
	instance_destroy()