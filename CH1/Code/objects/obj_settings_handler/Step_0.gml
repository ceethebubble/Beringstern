if !audio_is_playing(msc_beringsterntheme)
	audio_play_sound(msc_beringsterntheme,0,true)
	
if mousex != mouse_x or mousey != mouse_y
{
	mousex = mouse_x
	mousey = mouse_y
	usingmouse = true
}

if usingmouse
{
	section = round((mouse_y - 75) / 100) - 1
	if mouse_x < 330 or mouse_x > 880 section = SECTIONMAX + 1
}