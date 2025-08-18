hover_step()

if hover && ((keyboard_check_pressed(vk_enter)) or (keyboard_check_pressed(ord("Z")))) && !global.cutscene && dialog == 0
{
	global.cutscene = true
	if dialogTime > 0 && global.job != "construction"{
		makeDialogSound(vl_larry_1)
		start_dialogue("lazydude","Wha-","angry")
		dialog = 1;
	}
	if dialogTime == 0
	{
		makeDialogSound(vl_larry_ZZZ)
		start_dialogue("lazydude","zzZzZzzZzzzZzzZzZ...","sleep")
		dialog = 1;
	}
}

if dialogTime != 0 and global.job == "construction"
{
	global.cutscene = false;
	fade_to_room(rm_construction);
}