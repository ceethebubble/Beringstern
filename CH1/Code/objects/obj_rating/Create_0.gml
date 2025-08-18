xHere = x
yHere = y
image_speed = 0;

if(file_exists("progressFileDefault.bstrn"))
{
		var _file = file_text_open_read("progressFileDefault.bstrn");
		var _json = file_text_read_string(_file);
		var _struct = json_parse( _json);
		global.rating = _struct.rating
}