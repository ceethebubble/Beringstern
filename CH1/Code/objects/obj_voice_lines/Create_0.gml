xHere = x;
yHere = y;
image_speed = 0;
image_blend = c_white
global.voicelines = "on";

if(file_exists("progressFileDefault.bstrn"))
{
	global.voicelines = get_json_file("progressFileDefault.bstrn","voice_lines")
}