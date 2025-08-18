draw_set_font(fnt_serif)
draw_set_color(c_white)
draw_self()
draw_text_transformed(x - 120,y - 20,"Test A Sprite",image_yscale / 70,image_yscale / 70,image_angle / 5 )

if spriteshow{ draw_sprite_ext(spritename,frame,mouse_x/1.2,mouse_y/1.2,scale,scale,0,c_white,1)}