draw_set_alpha(1)

// draw the player health

draw_set_color(c_black)
draw_rectangle(0,650+guidown,250,768+guidown,false)

shader_set(global.avatar)
	
if 1+1=2 //the shaders
{
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
}

draw_sprite_ext(spr_dialog_player,5,10,660+guidown,0.5,0.5,0,c_white,guialpha)
shader_reset()

draw_set_valign(fa_top)
draw_set_halign(fa_left)
draw_set_color(c_white)
draw_set_font(fnt_pixel)
draw_text_transformed(80,660+guidown,global.name,clamp(150 / string_width(global.name), 0, 0.5),0.5,0)

draw_set_color(c_red)
draw_rectangle(10,730+guidown,240,750+guidown,false)

draw_set_color(c_lime)
draw_rectangle(10,730+guidown,10 + 230 * hpPercent,750+guidown,false)

// draw the opponent health

draw_set_color(c_black)
draw_rectangle(250,650+guidown,500,768+guidown,false)

draw_sprite_ext(opponent_icon_sprite,0,260,660+guidown,0.5,0.5,0,c_white,guialpha)
shader_reset()

draw_set_halign(fa_left)
draw_set_color(c_white)
draw_set_font(fnt_pixel)
draw_text_transformed(330,660+guidown,opponent_name,clamp(150 / string_width(opponent_name), 0, 0.5),0.5,0)

draw_set_color(c_red)
draw_rectangle(260,730+guidown,490,750+guidown,false)

if hpOpponentPercent < 0
{
	hpOpponentPercent = 0
}
else
{
	draw_set_color(c_lime)
	draw_rectangle(260,730+guidown,260 + (230 * hpOpponentPercent),750+guidown,false)
}