if not dying and not sparing
{
	var chosen = choose_attack(get_json_file(global.aiPath,"attacks"));
	instance_create_depth(x, y + attack_offset, depth - 30, asset_get_index(chosen.id)); // do not fix this error lol, it's just gamemaker being silly
}