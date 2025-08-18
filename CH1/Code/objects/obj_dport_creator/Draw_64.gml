xStart = 150
draw_set_font(fnt_default)

draw_set_alpha(image_alpha)

makeBox(x,y,x+1088,y+150,c_white,7)

// Draw speaker's name

draw_set_color(c_black);
draw_set_halign(fa_left);

image_blend = c_white
var _wrapped_text = wrap_text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididun",900,0.4)

	if asset_get_index(sprite) != -1
	{
		var sprite_dialog = asset_get_index(sprite)
	}
	else
	{
		var sprite_dialog = spr_error_sprite
	}
	
	draw_sprite_ext(sprite_dialog, image_index, x + xOffset, y + 20 + yOffset,image_xscale * size,image_yscale * size,0,c_white,image_alpha);

	draw_text_transformed(x + 150, y + 10, char_name, 0.45, 0.45, 0);

// Draw the dialogue text
yStart = 60

//DRAW TEXT

xLine = xStart
yLine = yStart

number = 1
str_l = string_length(_wrapped_text)
color = c_black

while number <= str_l
{
	if string_char_at(_wrapped_text,number) == "&"
	{
		switch string_char_at(_wrapped_text,number+1)
		{
			case "R":
				color = c_red
				break;
			case "O":
				color = c_orange
				break;
			case "Y":
				color = c_yellow
				break;
			case "G":
				color = c_green
				break;
			case "A":
				color = c_aqua
				break;
			case "B":
				color = c_blue
				break;
			case "P":
				color = c_purple
				break;
			case "L":
				color = c_black
				break;
			default:
				color = c_black
				break;
		}
		number += 2
	}
	draw_set_color(color)
	draw_text_transformed(x+xStart,y+yStart,string_char_at(_wrapped_text,number),0.4,0.4,0)
	switch string_char_at(_wrapped_text,number)
	{
		case "i": case "l": case "'": case "I":
			xStart += (spacing * 0.5); // Narrower characters
			break;
		case "?": case "s": case "j": case "S":
			xStart += (spacing * 0.8); // Slightly narrower characters
			break;
		case "n":
			xStart += (spacing * 1.1); // A little wider
			break;
		case "m": case "w": case "M": case "W": case "N":
			xStart += (spacing * 1.5); // Wider characters
			break;
		case " ": case ",": case ".": case "!": //Space
			xStart += spacing / 2;
			break;
		default:
			xStart += spacing; // Normal size.
	}
	number += 1
	if string_char_at(_wrapped_text, number) == chr(10)
	{
		yStart += spacing * 2; // Move down for a new line
		xStart = xLine; // Reset x position to start of line
		number += 1; // Move to the next character
	}
}

draw_set_color(c_black)

// Draw speaker's expression (assuming you have sprites for expressions)

	for (var i = 0; i < array_length(expression_list); i++) {
        if (expression_list[i].name == "default") {
            image_index = expression_list[i].index;
            break;
        }
    }
	
    for (var i = 0; i < array_length(expression_list); i++) {
        if (expression_list[i].name == expression) {
            image_index = expression_list[i].index;
            break;
        }
    }