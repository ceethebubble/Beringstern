draw_set_font(fnt_default)
draw_set_halign(fa_center)

//BUTTONS

settings_sections(section,0,"Back")

global.flags[2] = window_get_fullscreen()

if global.flags[2]
	settings_sections(section,1,"Windowed")
	// OK YES, FINE, I COULDN'T MAKE A KEYBIND. I'M SORRY
	// Could you... try to ignore it and like the game for how it is?
	// I'm so sorry but...
	// You'll see how much the game breaks if you make a keybind turn it on.
	// There's too much things to fix, okay!?
	// Just because of this one mistake does NOT mean I'm lazy lol
	// I'll make it up to you :(
	// Thanks for understanding!
else
	settings_sections(section,1,"Fullscreen")

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