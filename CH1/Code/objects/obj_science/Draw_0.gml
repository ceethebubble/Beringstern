draw_set_alpha(1)
draw_set_color(c_white)
makeBox(100,100,room_width-100,600,c_white,2)

makeBox(575,150,725,300,rgb,3)
makeBox(575,350,725,500,rgb_fake,3)

draw_set_color(c_black)
draw_set_halign(fa_center)
draw_text_transformed(650,560,"Press SPACE to claim your money",0.4,0.4,0)
draw_text_transformed(650,530,"Press R, G, B, and K to change the color",0.4,0.4,0)