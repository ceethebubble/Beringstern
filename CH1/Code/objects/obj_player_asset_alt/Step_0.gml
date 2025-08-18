subimg = subimg + 1;

image_xscale = 1.8
image_yscale = 1.85

// Check if mouse is inside the color wheel
var mx = device_mouse_x(0);
var my = device_mouse_y(0);

if (point_distance(cx, cy, mx, my) <= radius) {
	if mouse_check_button(mb_left)
	{
    sel_x = mx;
    sel_y = my;
	}
}

show_debug_message(gray)