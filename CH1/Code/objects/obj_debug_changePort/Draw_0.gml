if asset_get_index(sprite) != -1
{
	spriteDisplay = asset_get_index(sprite)
}
else
{
	spriteDisplay = spr_error_sprite
}

draw_self()
draw_sprite_ext(spriteDisplay,image_index,x-45,y-45,(image_xscale/3) * obj_debug_changePortSize.portsize,(image_yscale/3) * obj_debug_changePortSize.portsize,0,c_white,1)