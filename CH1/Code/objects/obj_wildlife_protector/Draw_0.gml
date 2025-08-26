image_alpha = 0
if hoverOn
{
	draw_sprite_ext(spr_block_trash,imgrandoms,xrandoms,yTrash,0.24,0.24,1,c_white,1)
}
else
{
	draw_sprite_ext(spr_block_trash,imgrandoms,xrandoms,yTrash,0.2,0.2,1,c_white,1)
}

draw_set_color(c_black)
draw_set_alpha(1)
draw_set_font(fnt_default)
draw_set_halign(fa_right)
draw_text_transformed(1300,620,"Pick up trash!\nPress enter to exit.",0.6,0.6,0)

draw_set_color(c_white)
draw_set_alpha(fade)
draw_rectangle(0,0,99999,99999,false)