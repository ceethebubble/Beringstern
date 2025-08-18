hover_step()

if hover && ((keyboard_check_pressed(vk_enter)) or (keyboard_check_pressed(ord("Z")))) && !global.cutscene && dialog == 0
{
	play_sfx(sfx_doorbell);
	global.cutscene = true;
	alarm[1] = room_speed;
}