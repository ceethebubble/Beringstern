if image_angle = 2
{
	global.flags[1] += 1
}
else
{
	global.flags[1] -= 1
}

if global.flags[1] > 5
{
	global.flags[1] = 5
}

if global.flags[1] < 0
{
	global.flags[1] = 0
}