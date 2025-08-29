switch (textChange)
{
	case 1:
		text = "Not all enemies want to fight. To spare, have mercy and do NOT fight!"
		break;
	case 2:
		text = "Mercy is like a puzzle, each enemy has a different way to spare it."
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