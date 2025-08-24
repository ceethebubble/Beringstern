drawAndPress = !drawAndPress

if drawAndPress
{
if hover
{
	if !global.cutscene
	{
		drawPaper = true;
		global.flags[9] = true;
		global.cutscene = true;
	}
}
}
else
{

if drawPaper
{
	drawPaper = false;
	global.cutscene = false;
}
}