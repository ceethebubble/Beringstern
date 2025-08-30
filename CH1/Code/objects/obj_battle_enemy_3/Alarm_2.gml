if not dying and not sparing
{
	alarm[6] = room_speed
	if chosen != "none"
		instance_create_depth(x, y + attack_offset, depth - 30, asset_get_index(chosen.id)); // do not fix this error lol, it's just gamemaker being silly
}