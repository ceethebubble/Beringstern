// Inherit the parent event
event_inherited();

image_xscale += (0.4 - image_xscale) / 5
image_yscale += (0.4 - image_yscale) / 5

if changing
	image_alpha -= 0.1

if image_alpha <= 0
	instance_destroy()
	
move_towards_point(obj_player.x,obj_player.y,4)

rotation += 0.2

image_angle = floor(rotation) * 45