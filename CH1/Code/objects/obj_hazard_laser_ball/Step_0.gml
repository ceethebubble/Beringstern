// Inherit the parent event
event_inherited();

image_xscale += (0.4 - image_xscale) / 5
image_yscale += (0.4 - image_yscale) / 5

if changing
	image_alpha -= 0.1

if image_alpha <= 0
{
	if instance_exists(obj_hazard_laser) instance_destroy(obj_hazard_laser)
	instance_destroy()
}

if (instance_exists(obj_battle_enemy_3) && (obj_battle_enemy_3.dying) or (obj_battle_enemy_3.sparing))
{
	if instance_exists(obj_hazard_laser) instance_destroy(obj_hazard_laser)
	instance_destroy()
}