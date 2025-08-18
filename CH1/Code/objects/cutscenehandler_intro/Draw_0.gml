shader_set(global.avatar)
	shader_set_uniform_f(shader_get_uniform(shdr_player_red, "char_index"),
	global.char_index);
		
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

if cutscene_part = 1 and noiselines_frame_index < 28
{
	draw_sprite_ext(spr_effect_noise_lines,noiselines_frame_index,544,128,0.7,0.7,0,c_white,1)
}