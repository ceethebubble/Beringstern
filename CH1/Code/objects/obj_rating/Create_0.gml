xHere = x
yHere = y
image_speed = 0;

if(file_exists("progressFileDefault.bstrn"))
{
	global.rating = get_json_file("progressFileDefault.bstrn","rating")
}