makeCharacterAnimations()

if cutscene_part = 1
{
	noiselines_frame_index += 1;
}

if sprite_index == get_up && image_index >= 128
{
	image_speed = 0.7;
	x -= 35
	sprite_index = left
	image_xscale = 0.58;
	image_yscale = 0.58;
}
if sprite_index == get_up && image_index > 115 and image_index < 124
{
	x -= 2
}

if sprite_index == left or sprite_index == right
{
	if xChange < 90
	{
		x -= 3
		xChange += 3
	}
	else
	{
		image_speed = 0;
		image_index = 0;
		alarm_1 -=1
	}
}

if alarm_1 <= 0
{
	sprite_index = up;
	alarm_2 -= 1
	if alarm_2 <= 0
	{
		cutscene_part = 2;
		image_speed = 0.7
	}
}

if cutscene_part = 2
{
	if yChange < 150
	{
		y -= 3
		yChange += 3
	}
	else
	{
		image_index = 0;
		image_speed = 0;
		alarm_3 -= 1
	}
	
	if alarm_3 <= 0 and dialog = 0
	{
		start_dialogue("player","What's going on?","surprised");
		dialog = 1;
	}
}


avatarBaseR = global.avatarR;
avatarBaseG = global.avatarG;
avatarBaseB = global.avatarB;

avatarOutlineR = global.outlineAvatarR;
avatarOutlineG = global.outlineAvatarG;
avatarOutlineB = global.outlineAvatarB;

avatarFaceR = global.faceAvatarR
avatarFaceG = global.faceAvatarG
avatarFaceB = global.faceAvatarB

avatarShoeR = global.shoeAvatarR
avatarShoeG = global.shoeAvatarG
avatarShoeB = global.shoeAvatarB