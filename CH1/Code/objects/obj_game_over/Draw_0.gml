draw_sprite_ext(spr_effect_spotlight,0,x,y,image_xscale*1.3,image_yscale*1.3,0,c_white,spotlight/1.5)

draw_set_alpha(1)

if global.name_of_avatar = "character red"
{
	global.avatar = shdr_player_red
}
if global.name_of_avatar = "character neon"
{
	global.avatar = shdr_player_neon
}
if 	global.name_of_avatar = "character pink"
{
	global.avatar = shdr_player_pink
}
if global.name_of_avatar = "character black and white"
{
	global.avatar = shdr_player_grayscale
}
if global.name_of_avatar = "character purple"
{
	global.avatar = shdr_player_purple
}
if global.name_of_avatar = "character white"
{
	global.avatar = shdr_player_white
}
if global.name_of_avatar = "character gray"
{
	global.avatar = shdr_player_gray
}
if global.name_of_avatar = "character ghost"
{
	global.avatar = shdr_player_ghost
}
if global.name_of_avatar = "character custom"
{
	global.avatar = shdr_player_custom
}

if image_alpha > 0
{
	shader_set(global.avatar)
}
depth = -y;
draw_self()


shader_set_uniform_f(shader_get_uniform(shdr_player_custom, "avatarR"), avatarBaseR);
shader_set_uniform_f(shader_get_uniform(shdr_player_custom, "avatarG"), avatarBaseG);
shader_set_uniform_f(shader_get_uniform(shdr_player_custom, "avatarB"), avatarBaseB);

shader_set_uniform_f(shader_get_uniform(shdr_player_custom, "avatarOutlineR"), avatarOutlineR);
shader_set_uniform_f(shader_get_uniform(shdr_player_custom, "avatarOutlineG"), avatarOutlineG);
shader_set_uniform_f(shader_get_uniform(shdr_player_custom, "avatarOutlineB"), avatarOutlineB);

shader_set_uniform_f(shader_get_uniform(shdr_player_custom, "avatarFaceR"), avatarFaceR);
shader_set_uniform_f(shader_get_uniform(shdr_player_custom, "avatarFaceG"), avatarFaceG);
shader_set_uniform_f(shader_get_uniform(shdr_player_custom, "avatarFaceB"), avatarFaceB);

shader_set_uniform_f(shader_get_uniform(shdr_player_custom, "avatarShoeR"), avatarShoeR);
shader_set_uniform_f(shader_get_uniform(shdr_player_custom, "avatarShoeG"), avatarShoeG);
shader_set_uniform_f(shader_get_uniform(shdr_player_custom, "avatarShoeB"), avatarShoeB);

shader_reset()

draw_sprite_ext(spr_effect_spotlight,0,x,y,image_xscale*1.3,image_yscale*1.3,0,c_yellow,spotlight/4)

draw_set_color(flickycolor)
draw_set_alpha(flicker)
draw_rectangle(0,0,3000,3000,false)

draw_sprite_ext(spr_gui_game_over,game_over_index,400,544,1.2,1.2,0,c_white,spotlight)

draw_set_color(c_white)
draw_set_alpha(white)
draw_rectangle(0,0,3000,3000,false)