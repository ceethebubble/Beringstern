if global.name_of_avatar = "character red"
{
	global.avatar = shdr_player_red
	shader_set_uniform_f(shader_get_uniform(shdr_player_red, "char_index"), global.char_index);

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

draw_self()

shader_reset()

if showKey = true or showKey = 1
{
	draw_sprite_ext(spr_gui_enter_pop,-1,x,y-180,enterSize,enterSize,0,c_white,image_alpha)
}
else
{
	enterSize = 0.5;
}

if global.debug
{
	if (punch)
	{
		draw_set_alpha(.5)
		var box_width  = sprite_width + 40; // total width of the box (left to right)
		var box_height = sprite_height + 40; // total height of the box (top to bottom)
		var facing_offset = (0 - sign(image_xscale)) * 10; // 10 pixels to the left or right
		
		var left_box   = x - box_width / 2 + facing_offset;
		var right_box  = x + box_width / 2 + facing_offset;
		var top_box    = y - box_height / 2;
		var bottom_box = y + box_height / 2;
		draw_rectangle(left_box,top_box,right_box,bottom_box,false)
	}
}