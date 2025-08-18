shader_set(shdr_player_custom);

shader_set_uniform_f(shader_get_uniform(shdr_player_custom, "char_index"), global.char_index);

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

draw_sprite_ext(spr_player_run,subimg,100,100,2,2,0,c_white,1);
shader_reset()

draw_set_halign(fa_left)

draw_set_font(fnt_default)
draw_set_color(make_color_rgb(240,128,255))
draw_text_transformed(100,600,"Use A, D, and arrow keys to change color.\n Press enter when you're done.",0.45,0.45,0)

if colorpart = 0
{
	draw_text_transformed(100,700,"Selected Body: Base",0.4,0.4,0)
	onR = avatarBaseR
	onG = avatarBaseG
	onB = avatarBaseB
}
if colorpart = 1
{
	draw_text_transformed(100,700,"Selected Body: Outline",0.4,0.4,0)
	onR = avatarOutlineR
	onG = avatarOutlineG
	onB = avatarOutlineB
}
if colorpart = 2
{
	draw_text_transformed(100,700,"Selected Body: Face",0.4,0.4,0)
	onR = avatarFaceR
	onG = avatarFaceG
	onB = avatarFaceB
}
if colorpart = 3
{
	draw_text_transformed(100,700,"Selected Body: Shoes",0.4,0.4,0)
	onR = avatarShoeR
	onG = avatarShoeG
	onB = avatarShoeB
}

draw_sprite_ext(spr_gradient_color,0,700,100,1,1,0,c_red,1)
draw_sprite_ext(spr_gradient_color,0,700,300,1,1,0,c_green,1)
draw_sprite_ext(spr_gradient_color,0,700,500,1,1,0,c_blue,1)

if point = 0
{
	draw_sprite_ext(spr_avatar_arrow,0,600+(onR*250),50,1,1,0,c_orange,1)
	draw_sprite_ext(spr_avatar_arrow,0,600+(onG*250),250,1,1,0,c_white,1)
	draw_sprite_ext(spr_avatar_arrow,0,600+(onB*250),450,1,1,0,c_white,1)
}
if point = 1
{
	draw_sprite_ext(spr_avatar_arrow,0,600+(onR*250),50,1,1,0,c_white,1)
	draw_sprite_ext(spr_avatar_arrow,0,600+(onG*250),250,1,1,0,c_orange,1)
	draw_sprite_ext(spr_avatar_arrow,0,600+(onB*250),450,1,1,0,c_white,1)
}
if point = 2
{
	draw_sprite_ext(spr_avatar_arrow,0,600+(onR*250),50,1,1,0,c_white,1)
	draw_sprite_ext(spr_avatar_arrow,0,600+(onG*250),250,1,1,0,c_white,1)
	draw_sprite_ext(spr_avatar_arrow,0,600+(onB*250),450,1,1,0,c_orange,1)
}