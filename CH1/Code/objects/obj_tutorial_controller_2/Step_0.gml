switch (textChange)
{
	case 1:
		text = "This is a battle! Move around and dodge those attacks!"
		break;
	case 2:
		text = "Punch the enemy by pressing E. Make sure to not do it when they're not attacking!"
		break;
	case 3:
		text = "When their health goes down, you defeat them and win the battle!"
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