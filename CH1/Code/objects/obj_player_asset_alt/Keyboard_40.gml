var gray_temp = gray
if gray_temp > 0
{
	gray_temp -= 2
}
else
{
	gray_temp = 0
}

if colorpart = 0
{
	baseGray = gray_temp
}
if colorpart = 1
{
	faceGray = gray_temp
}
if colorpart = 2
{
	shoeGray = gray_temp
}