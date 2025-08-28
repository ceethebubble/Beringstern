subimg = subimg + 1;

image_xscale = 1.8
image_yscale = 1.85

// Check if mouse is inside the color wheel
var mx = device_mouse_x(0);
var my = device_mouse_y(0);

if (point_distance(cx, cy, mx, my) <= radius)
{
	if mouse_check_button(mb_left)
	{
		if colorpart = 0
		{
			baseSelX = mx
			baseSelY = my
		}
		if colorpart = 1
		{
			faceSelX = mx
			faceSelY = my
		}
		if colorpart = 2
		{
			shoeSelX = mx
			shoeSelY = my
		}
	}
}

if (point_distance(darkX, darkY, mx, my) <= darkScale * 1.25)
{
	if mouse_check_button(mb_left)
	{
		var mytemp = my - 64
		if mytemp > 506
			mytemp = 506
		var _gray = 255 - ((mytemp / 506) * 255)
		
		if colorpart = 0
		{
			baseGray = _gray
		}
		if colorpart = 1
		{
			faceGray = _gray
		}
		if colorpart = 2
		{
			shoeGray = _gray
		}
	}
}

if colorpart = 0
{
	sel_x = baseSelX
	sel_y = baseSelY
	gray = baseGray
}
if colorpart = 1
{
	sel_x = faceSelX
	sel_y = faceSelY
	gray = faceGray
}
if colorpart = 2
{
	sel_x = shoeSelX
	sel_y = shoeSelY
	gray = shoeGray
}