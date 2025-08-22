max_index = array_length(songs) - 2;

if (keyboard_check_pressed(vk_left))
	alarm[1] = 1

if (keyboard_check_pressed(vk_right))
    alarm[0] = 1

steps_per_beat = room_speed * 60 / tempo;
djScale += (0.5 - djScale) * 1 / (steps_per_beat / 2)

beat_timer += 1;

if (beat_timer >= steps_per_beat) {
    beat_timer -= steps_per_beat; // keeps leftover fraction for accuracy
	djScale = 0.525
}

scaleCoverFinal = scaleCover * djScale * 2

if side = 1
{
	if xCoverOffset < 0
	{
		speedX -= 8
		scaleCover -= speedX / 10000
		xCoverOffset -= speedX
		if xCoverOffset < 0 - (room_width / 2) - 125
		{
			xCoverOffset = (room_width / 2) + 125
			music_setup()
		}
	}
	if xCoverOffset > 0
	{
		speedX -= 8
		xCoverOffset -= speedX
		scaleCover += speedX / 10000
		if xCoverOffset < 0
		{
			scaleCover = 0.4
			speedX = 0
			xCoverOffset = 0
		}
	}
}
else
{
	if xCoverOffset > 0
	{
		speedX -= 8
		scaleCover -= speedX / 10000
		xCoverOffset += speedX
		if xCoverOffset > (room_width / 2) + 125
		{
			xCoverOffset = 0 - (room_width / 2) - 125
			music_setup()
		}
	}
	if xCoverOffset < 0
	{
		speedX -= 8
		xCoverOffset += speedX
		scaleCover += speedX / 10000
		if xCoverOffset > 0
		{
			scaleCover = 0.4
			speedX = 0
			xCoverOffset = 0
		}
	}
}