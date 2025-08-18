if room == rm_battle && !punch && (!keyboard_check(ord("W")) && !keyboard_check(ord("S")) && !keyboard_check(ord("A")) && !keyboard_check(ord("D"))) && !global.cutscene
{
	audio_sound_pitch( sfx_punch, random_range(0.5, 2) )
	play_sfx(sfx_punch)
	punch = true
	
	var box_width  = sprite_width + 40; // total width of the box (left to right)
	var box_height = sprite_height + 40; // total height of the box (top to bottom)
	var facing_offset = (0 - sign(image_xscale)) * 25; // 10 pixels to the left or right

	var left_box   = x - box_width / 2 + facing_offset;
	var right_box  = x + box_width / 2 + facing_offset;
	var top_box    = y - box_height / 2;
	var bottom_box = y + box_height / 2;
	
	if ( collision_rectangle(left_box, top_box, right_box, bottom_box, obj_battle.battle_object, false, true) )
	{
		global.opponent_hp -= ( global.strength + 1 ) * 1.5
	}
	
}