draw_self()

draw_set_color(c_black)
draw_set_font(fnt_default)
draw_set_halign(fa_left)

if showText = true
{
	draw_text_transformed(448,128,"Math Quiz",1,1,2)
	draw_text_transformed(416,256,questions[0],0.4,0.4,2)
	draw_text_transformed(416,320,questions[1],0.4,0.4,2)
	draw_text_transformed(416,384,questions[2],0.4,0.4,2)
	draw_text_transformed(416,448,questions[3],0.4,0.4,2)
	draw_text_transformed(416,512,questions[4],0.4,0.4,2)
}