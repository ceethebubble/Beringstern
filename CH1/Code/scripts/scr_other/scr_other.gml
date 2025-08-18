function load_list_from_txt(_filename) {
    var _list = [];
    
    if (file_exists(_filename)) {
        var _file = file_text_open_read(_filename);
        
        while (!file_text_eof(_file)) {
            var line = string_trim(file_text_read_string(_file));
            file_text_readln(_file); // move to next line
            
            if (line != "") { // skip empty lines
                array_push(_list, line);
            }
        }
        
        file_text_close(_file);
    } else {
        show_debug_message("Could not find file: " + _filename);
    }
    
    return _list;
}


function json_pretty(_json) {
    var _indent = 0;
    var _pretty = "";
    var _in_string = false;

    for (var i = 1; i <= string_length(_json); i++) {
        var _char = string_char_at(_json, i);

        if (_char == "\"" && string_char_at(_json, i-1) != "\\") {
            _in_string = !_in_string;
            _pretty += _char;
        }
        else if (!_in_string) {
            switch (_char) {
                case "{":
                case "[":
                    _pretty += _char + "\n" + string_repeat("    ", ++_indent);
                break;

                case "}":
                case "]":
                    _pretty += "\n" + string_repeat("    ", --_indent) + _char;
                break;

                case ",":
                    _pretty += _char + "\n" + string_repeat("    ", _indent);
                break;

                case ":":
                    _pretty += ": ";
                break;

                default:
                    if (_char != " ") _pretty += _char;
            }
        }
        else {
            _pretty += _char;
        }
    }

    return _pretty;
}

function config_load_json() {
    var _file_path = "config.json"; // File name or path
    if (file_exists(_file_path)) {
        var _file = file_text_open_read(_file_path);
        var _json = "";
        
        // Read the entire file content
        while (!file_text_eof(_file)) {
            _json += file_text_read_string(_file);
            file_text_readln(_file); // Move to the next line
        }
        
        file_text_close(_file);
        
        try {
            var _struct = json_parse(_json);
            global.config_data = _struct;
        } catch (e) {
            show_error("Failed to parse JSON: " + string(e), true);
            global.config_data = undefined;
        }
    } else {
        show_error("JSON file not found: " + _file_path, true);
        return undefined;
    }
}

function ds_list_to_array(_list)
{
    var _size = ds_list_size(_list);
    var _array = array_create(_size);
    
    for (var i = 0; i < _size; i++)
    {
        _array[i] = ds_list_find_value(_list, i);
    }
    
    return _array;
}

function draw_player_colors()
{
	// --- AVATAR COLOR SETTINGS ---
	avatarBaseR = global.avatarR;
	avatarBaseG = global.avatarG;
	avatarBaseB = global.avatarB;
	
	avatarOutlineR = global.outlineAvatarR;
	avatarOutlineG = global.outlineAvatarG;
	avatarOutlineB = global.outlineAvatarB;
	
	avatarFaceR = global.faceAvatarR;
	avatarFaceG = global.faceAvatarG;
	avatarFaceB = global.faceAvatarB;
	
	avatarShoeR = global.shoeAvatarR;
	avatarShoeG = global.shoeAvatarG;
	avatarShoeB = global.shoeAvatarB;

	// --- THE DRAWING ---
	
	if global.name_of_avatar = "character red"
	{
		global.avatar = shdr_player_red
		shader_set_uniform_f(shader_get_uniform(shdr_player_red, "char_index"), global.char_index);

	}
	if global.name_of_avatar = "character neon"
	{
		global.avatar = shdr_player_neon
	}
	if 	global.name_of_avatar = "character pink"
	{
		global.avatar = shdr_player_pink
	}
	if global.name_of_avatar = "character black and white"
	{
		global.avatar = shdr_player_grayscale
	}
	if global.name_of_avatar = "character purple"
	{
		global.avatar = shdr_player_purple
	}
	if global.name_of_avatar = "character white"
	{
		global.avatar = shdr_player_white
	}
	if global.name_of_avatar = "character gray"
	{
		global.avatar = shdr_player_gray
	}
	if global.name_of_avatar = "character ghost"
	{
		global.avatar = shdr_player_ghost
	}
	if global.name_of_avatar = "character custom"
	{
		global.avatar = shdr_player_custom
	}
	
	if image_alpha > 0
	{
		shader_set(global.avatar)
	}
	
	shader_set_uniform_f(shader_get_uniform(shdr_player_custom, "avatarR"), avatarBaseR);
	shader_set_uniform_f(shader_get_uniform(shdr_player_custom, "avatarG"), avatarBaseG);
	shader_set_uniform_f(shader_get_uniform(shdr_player_custom, "avatarB"), avatarBaseB);
	
	shader_set_uniform_f(shader_get_uniform(shdr_player_custom, "avatarOutlineR"), avatarOutlineR);
	shader_set_uniform_f(shader_get_uniform(shdr_player_custom, "avatarOutlineG"), avatarOutlineG);
	shader_set_uniform_f(shader_get_uniform(shdr_player_custom, "avatarOutlineB"), avatarOutlineB);
	
	shader_set_uniform_f(shader_get_uniform(shdr_player_custom, "avatarFaceR"), avatarFaceR);
	shader_set_uniform_f(shader_get_uniform(shdr_player_custom, "avatarFaceG"), avatarFaceG);
	shader_set_uniform_f(shader_get_uniform(shdr_player_custom, "avatarFaceB"), avatarFaceB);
	
	shader_set_uniform_f(shader_get_uniform(shdr_player_custom, "avatarShoeR"), avatarShoeR);
	shader_set_uniform_f(shader_get_uniform(shdr_player_custom, "avatarShoeG"), avatarShoeG);
	shader_set_uniform_f(shader_get_uniform(shdr_player_custom, "avatarShoeB"), avatarShoeB);
}

function fade_to_room(roomToGo,changingPos=false,playerXTo=0,playerYTo=0)
{
		global.cutscene = true;
		var fadeObj = instance_create_depth(0,0,-9999,obj_fade)
		fadeObj.roomtrans = roomToGo
		fadeObj.playerchangepos = changingPos
		fadeObj.xgoing = playerXTo
		fadeObj.ygoing = playerYTo
}

function settings_sections(_section,_number,_label)
{
	if _section = _number
		draw_set_color(make_color_rgb(40,10,40))
	else
		draw_set_color(make_color_rgb(128,20,128))
	
	draw_text_transformed(600,_number*100+150,_label,0.6,0.6,0)
}

function getlines(_str) {
    var count = 0;
    var pos = 1;
    
    while (pos != 0) {
        pos = string_pos("\n", _str);
        if (pos > 0) {
            count += 1;
            _str = string_delete(_str, pos, 1);
        }
    }
    
    return count;
}

function play_sfx(_sound){
	audio_play_sound(_sound,1,false)
}

function scr_rating(_teen_rating,_everyone_rating){
	if global.rating = "T"
		return _teen_rating
	if global.rating = "E"
		return _everyone_rating
}

function makeCharacterAnimations()
{
	if global.char_index = 0
	{
		character = "bubble"
		run = spr_player_run
		left = spr_player_left_right
		right = spr_player_left_right
		up = spr_player_up
		down = spr_player_down
		sleep = spr_player_sleep
		get_up = spr_player_get_up
	}
}

function make_color_hex(hex_string) {
    // Remove '#' if it exists
    if (string_char_at(hex_string, 1) == "#") {
        hex_string = string_delete(hex_string, 1, 1);
    }

    // Make sure it's exactly 6 characters
    if (string_length(hex_string) != 6) {
        show_error("Invalid hex color: " + hex_string, false);
        return c_white;
    }

    // Break into RGB parts
    var r = real("0x" + string_copy(hex_string, 1, 2));
    var g = real("0x" + string_copy(hex_string, 3, 2));
    var b = real("0x" + string_copy(hex_string, 5, 2));

    return make_color_rgb(r, g, b);
}

function collision(_obj){
	if instance_exists(_obj)
	{
		if place_meeting(x+collisionSpeed,y+collisionSpeed,_obj) or place_meeting(x-collisionSpeed,y-collisionSpeed,_obj)
		{
			_obj.hover = true;
			obj_player.showKey = true;
		}
		else
		{
			_obj.hover = false;
		}
	}
}

function hover_step()
{
	/// @description Check for hover

	if !global.cutscene{
		if hover
		{
		   // Blend the sprite color towards white
		   image_blend = make_color_rgb(240, 240, 255);
		}
		else
		{
		    // Reset to the original color with full opacity
		    image_blend = c_white; // Assuming the original color is unblended
		}
	}
	else
	{
			image_blend = c_white;
	}
}

function get_json_data(struct,variable)
{
	var json_struct = json_parse(string(struct));
	
	if variable_struct_exists(json_struct,variable)
		return variable_struct_get(json_struct, variable)
	else
		return -1
}

function get_json_file(filepath,variable)
{
	var _file = file_text_open_read(filepath)
	var _json = "";
	while (!file_text_eof(_file))
	{
		_json += file_text_read_string(_file);
		file_text_readln(_file); // move to next line
	}
	file_text_close(_file)
	return get_json_data(_json,variable)
}

function filePath(_filePath)
{
	if !file_exists(_filePath) show_debug_message("File does NOT exist!")
	var _temp =  file_text_open_read(_filePath)
	file_text_close(_temp)
	return _temp;
}