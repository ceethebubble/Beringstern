showBox = false;
switch (textChange)
{
	case 1:
		text = "Welcome to Beringstern, the magical town!"
		break;
	case 2:
		text = "You have just graduated from the nearby university."
		break;
	case 3:
		text = "The mayor has just been kidnapped and it is your journey to save him."
		break;
	case 4:
		text = "Use WASD to move. You can also use SPACE to run faster."
		break;
	case 5:
		text = "Great job! Now, if you want to be Beringstern's Hero, you need to make CHOICES."
		break;
	case 6:
		text = "Use left and right arrow keys to select a CHOICE. Press enter to CHOOSE."
		showBox = true
		break;
	case 7:
		text = "Great! You're doing a wonderful job!"
		break;
	case 8:
		text = "Now, time for the hard part. BATTLES."
		break;
	default:
		text = "um something here"
		break;
}

if textFading = "in"
	textAlpha += 1 / (room_speed * 0.5)
else if textFading = "out"
	textAlpha -= 1 / (room_speed * 0.5)
	
if textAlpha > 1
	textAlpha = 1
else if textAlpha < 0
	textAlpha = 0
	
if textChange = 4 and ( keyboard_check(ord("W")) or keyboard_check(ord("A")) or keyboard_check(ord("S")) or keyboard_check(ord("D")) ) and !tutorialFlags[0]
{
	show_debug_message("Moved!")
	tutorialFlags[0] = true
	alarm[2] = 1
}