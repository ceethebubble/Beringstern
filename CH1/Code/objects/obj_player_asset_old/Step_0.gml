subimg = subimg + 1;

//show_debug_message(avatar_index)
if avatar_index < 5 
{ 
	x = (100 + (( avatar_index - 1 ) * 300 )) - 90; 
	y = 30;
}
if avatar_index > 4 
{
	x = (100 + (( avatar_index - 5 ) * 300 )) - 90;
	y = 330;
}
//show_debug_message(string(x)+" "+string(y)+": "+string(avatar_index));
image_xscale = 1.8
image_yscale = 1.85

show_debug_message(point)