switch section
{
	case 0:
		if (file_exists("progressFileDefault.bstrn")) saveFile()
		fade_to_room(rm_menu)
		break;
	case 1:
		window_set_fullscreen(!window_get_fullscreen());
		break;
	case SECTIONMAX:
		if file_exists("progressFileDefault.bstrn")
		{
			audio_play_sound(sfx_nope,0,false)
			file_delete("progressFileDefault.bstrn")
		}
		else
		{
			/* disabled coz it wouldn't work for sum reason >:[
			switch random_range(1,10)
			{
				case 1:
					show_message("You haven't made any progress.")
					break;
				case 2:
					show_message("You tried to erase history, but you already did.")
					break;
				case 3:
					show_message("You didn't have any progress-\nWhat are you trying to delete?")
					break;
				case 4:
					show_message("Save file went missing...\nOh, you didn't have one.")
					break;
				case 5:
					show_message("Make some progress before erasing it.")
					break;
				case 6:
					show_message("We had several reports of ya trying to delete yer save file.\nP.S. You didn't have one.")
					break;
				case 7:
					show_message("Fiddlesticks, you didn't have one!")
					break;
				case 8:
					show_message("Congrats, you deleted nothing! (You didn't make progress.)")
					break;
				case 9:
					show_message("Reset failed- You didn't have any progress.")
					break;
				case 10:
					show_message("Yeah, uhm- make some progress first, will ya?")
					break;
			}
			*/
		}
}