xHere = x;
yHere = y;
image_speed = 0;
image_blend = c_white
global.voicelines = "on";

if(file_exists("progressFileDefault.bstrn"))
{
		var _file = file_text_open_read("progressFileDefault.bstrn");
		var _json = file_text_read_string(_file);
		var _struct = json_parse( _json);
		global.voicelines = _struct.voice_lines
}