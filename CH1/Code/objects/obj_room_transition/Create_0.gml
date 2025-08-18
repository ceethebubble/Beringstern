roomgo = rm_n_beringstern
xgo = 160
ygo = 1344
fading = false;

switch (room)
{
	case rm_workstation:
		roomgo = rm_n_beringstern
		xgo = 160
		ygo = 1344
		break;
	case rm_n_beringstern:
		if sign(image_xscale) = -1
		{
			roomgo = rm_workstation
			xgo = 5856
			ygo = 352
		}
		break;
}