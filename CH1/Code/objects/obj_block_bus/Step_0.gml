x += (xChange / 100)
if yChange
{
	y += (416 - y) / 10
}
if box
{
	if keyboard_check_pressed(vk_left) { chosen = "yes";}
	if keyboard_check_pressed(vk_right) { chosen = "no";}
}

if hover && ((keyboard_check_pressed(vk_enter)) or (keyboard_check_pressed(ord("Z")))) && !box && !global.cutscene
{
	hover2 = true;
	box = true;
	global.cutscene = true
}

image_blend = c_white;
hover_step()