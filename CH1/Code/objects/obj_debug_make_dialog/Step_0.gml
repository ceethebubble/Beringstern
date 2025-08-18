image_alpha = 0.5

// Check if the mouse is over the object, using position_meeting
if (position_meeting(mouse_x, mouse_y, id)) {
   image_xscale -= (image_xscale - original_size_x * 1.2) / 5
   image_yscale -= (image_yscale - original_size_y * 1.2) / 5
   if mouse_check_button(mb_left)
	{
		global.name = "Brandon"
		dialog = get_string("What dialog?","")
		if dialog == ""
		{
			start_dialogue("player","This is a really long message. Hopefully, the text will wrap to fit the box.","happy")
		}
		else
		{
			ts = real(get_string("Typing speed:",""))
			vl = get_string("Voice line: (Leave empty for none)","")
			speaker = get_string("Speaker:","")
			expression = get_string("Expression:","")
			show_debug_message("CODE:\nmakeDialogSound("+ vl +")\nstart_dialogue(\"" + string(speaker) + "\", \"" + string(dialog) + "\", \"" + string(expression) + "\", " + string(ts) + ")")
			if vl != ""
			{
				makeDialogSound(asset_get_index(vl))
			}
			start_dialogue(speaker,dialog,expression,ts)
		}
   }
}
else
{
	image_xscale -= (image_xscale - original_size_x) / 5
    image_yscale -= (image_yscale - original_size_y) / 5
}

image_angle = random_range(-1.1,1.1)