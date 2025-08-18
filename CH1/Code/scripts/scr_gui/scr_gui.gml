function make_fancy_number(_num, _x, _y, _spacing, _alpha) {
    // Convert the number to a string
    var _str_num = string(abs(_num)); // Use the absolute value for the digits only
    var _length = string_length(_str_num);
    
    // Check if number is positive or negative
    if (_num >= 0) {
        // Draw plus symbol for positive numbers (frame 10)
        draw_sprite_ext(spr_gui_numbers, 10, _x, _y, _spacing, _spacing, 0, c_white, _alpha);
    } else {
        // Draw minus symbol for negative numbers (frame 11)
        draw_sprite_ext(spr_gui_numbers, 11, _x, _y, _spacing, _spacing, 0, c_white, _alpha);
    }

    // Loop through each character in the string (digits only)
    for (var _i = 1; _i <= _length; _i++) {
        // Get the current digit as a string
        var _digit = real(string_char_at(_str_num, _i));
        
        // Draw the corresponding digit sprite
        draw_sprite_ext(spr_gui_numbers, _digit, _x + ((_spacing * 500) *_i), _y, _spacing, _spacing, 0, c_white, _alpha);
    }
}

function give_money(count, _x, _y) {
	
	var _new_layer = layer_create(-10000,"GUI")
    var money_instance = instance_create_layer(96, 64, _new_layer, obj_gui_money);

    // Set the speaker name
    money_instance.count = round(count);
    
    // Set the dialogue text
    money_instance.x = _x;

    // Set the expression (this can be used to determine the sprite or animation to display)
    money_instance.y = _y;

	global.money += round(count);
}

function makeDialogSound(_sound) // Voicelines!
{
	if global.voicelines = "on"
	{
		audio_stop_sound(global.sounddialog)
		
		audio_play_sound(_sound,0,false)
		global.sounddialog = _sound
	}
}

function makeBox(x1, y1, x2, y2, col_inside, outline_thickness,follow_alpha = false) {
    // Draw the filled rectangle
	if follow_alpha
		draw_set_alpha(image_alpha)
    draw_set_color(col_inside);
    draw_rectangle(x1, y1, x2, y2, false);
    
    // Draw the black outline
    draw_set_color(c_black);
		
   // Top line
    draw_rectangle(x1 - outline_thickness, y1 - outline_thickness, x2 + outline_thickness, y1, false);
    // Bottom line
    draw_rectangle(x1 - outline_thickness, y2, x2 + outline_thickness, y2 + outline_thickness, false);
    // Left line
    draw_rectangle(x1 - outline_thickness, y1, x1, y2, false);
    // Right line
    draw_rectangle(x2, y1, x2 + outline_thickness, y2, false);
    
    // Reset the color to white (default)
    draw_set_color(c_white);
}

function wrap_text(text, max_width, scale) {
    var lines = "";
    var words = string_split(text, " ");
    var current_line = "";
    
    for (var i = 0; i < array_length(words); i++) {
        var test_line = current_line + (current_line == "" ? "" : " ") + words[i];
        var line_width = string_width(test_line) * scale;
        
        if (line_width > max_width) {
            lines += current_line + "\n";
            current_line = words[i];
        } else {
            current_line = test_line;
        }
    }
    lines += current_line; // Add the last line
    
    return lines;

}

/// @function start_dialogue()
/// @desc Starts a dialogue!
/// @param speaker The person speaking the dialogue.
/// @param dialogue_text What the speaker is saying.
/// @param expression The speaker's expression.
/// @param typing_speed How long it takes to type the text.
/// @param tremble Makes the text tremble if true.
/// @param autoskip_ The dialogue skips by itself.
/// @param skiptime_ How long it takes to skip the dialogue.

function start_dialogue(speaker, dialogue_text, expression, typing_speed = 0.5, tremble = false, autoskip_ = false, skiptime_ = 1)
{
	
	var _new_layer = layer_create(-1000,"GUI")
	
	// Create the dialogue instance on the new layer
	var dialogue_instance = instance_create_layer(96, 64, _new_layer, obj_dialogue);

    // Set the speaker name
    dialogue_instance.speaker = speaker;
    
    // Set the dialogue text
    dialogue_instance.dialogue_text = dialogue_text;

    // Set the expression (this can be used to determine the sprite or animation to display)
    dialogue_instance.expression = expression;

    // Additional settings or functions can be added as needed
	
	dialogue_instance.typing_speed = typing_speed;
	
	dialogue_instance.tremble = tremble;
	
	dialogue_instance.autoskip = autoskip_
	
	dialogue_instance.autoskiptime = skiptime_
}

function draw_name_input(name)
{
	draw_text_transformed(640, 260, name, 0.5, 0.5, 0);
}

/// @function get_color_from_wheel(_x, _y)
/// @desc Gets the color from the screen at _x, _y
/// @param _x - X position to sample
/// @param _y - Y position to sample
/// @return color at that pixel (RGB)

function get_color_from_wheel(_x, _y) {
	return draw_getpixel(_x,_y)
}