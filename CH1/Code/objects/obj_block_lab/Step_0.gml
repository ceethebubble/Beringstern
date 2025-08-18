hover_step()

if hover && ((keyboard_check_pressed(vk_enter)) or (keyboard_check_pressed(ord("Z")))) && !global.cutscene && dialog == 0
{
	global.cutscene = true
	start_dialogue("cerberus","Bark!\nBark!\nBark!","neutral")
	dialog = 1;
}
