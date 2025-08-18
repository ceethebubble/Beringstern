if avatar_index = 1
{
	global.avatar = shdr_player_red
	global.name_of_avatar = "character red"
}
if avatar_index = 2
{
	global.avatar = shdr_player_neon
	global.name_of_avatar = "character neon"
}
if avatar_index = 3
{
	global.avatar = shdr_player_pink
	global.name_of_avatar = "character pink"
}
if avatar_index = 4
{
	global.avatar = shdr_player_grayscale
	global.name_of_avatar = "character black and white"
}
if avatar_index = 5
{
	global.avatar = shdr_player_purple
	global.name_of_avatar = "character purple"
}
if avatar_index = 6
{
	global.avatar = shdr_player_white
	global.name_of_avatar = "character white"
}
if avatar_index = 7
{
	global.avatar = shdr_player_gray
	global.name_of_avatar = "character gray"
}
if avatar_index = 8
{
	global.avatar = shdr_player_ghost
	global.name_of_avatar = "character ghost"
}

//show_message("You picked "+string(global.name_of_avatar)+": "+string(global.avatar)+", Name: "+string(global.name))
fade_to_room(rm_tutorial)