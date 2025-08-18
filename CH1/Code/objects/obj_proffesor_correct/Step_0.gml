if obj_proffesor_paper.showText
{
	image_alpha = 1
}
else
{
	image_alpha = 0;
}

if mouseState = "hover"
{
	image_xscale += (0.35 - image_xscale) / 5
	image_yscale += (0.35 - image_yscale) / 5
}
else
{
	image_xscale += (0.3 - image_xscale) / 5
	image_yscale += (0.3 - image_yscale) / 5
}