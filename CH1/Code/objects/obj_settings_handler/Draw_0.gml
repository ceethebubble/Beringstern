draw_set_font(fnt_default)
draw_set_halign(fa_center)
draw_set_alpha(1)

//BUTTONS

settings_sections(section,0,"Back")

global.flags[2] = window_get_fullscreen()

if global.flags[2]
	settings_sections(section,1,"Windowed")
else
	settings_sections(section,1,"Fullscreen")
	
settings_sections(section,2,"Play Music")

//RESET PROGRESS!

if section = SECTIONMAX
{
	draw_set_color(make_color_rgb(50,0,0))
	draw_text_transformed(random_range(598,602),random_range((SECTIONMAX*100)+148,(SECTIONMAX*100)+152),"Reset Progress",0.6,0.6,0)
}
else
{
	draw_set_color(make_color_rgb(128,20,128))
	draw_text_transformed(600,(SECTIONMAX*100)+150,"Reset Progress",0.6,0.6,0)
}