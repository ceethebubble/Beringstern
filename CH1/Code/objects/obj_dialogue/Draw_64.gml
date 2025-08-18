image_speed = 0

avatarBaseR = global.avatarR;
avatarBaseG = global.avatarG;
avatarBaseB = global.avatarB;

avatarOutlineR = global.outlineAvatarR;
avatarOutlineG = global.outlineAvatarG;
avatarOutlineB = global.outlineAvatarB;

avatarFaceR = global.faceAvatarR
avatarFaceG = global.faceAvatarG
avatarFaceB = global.faceAvatarB

avatarShoeR = global.shoeAvatarR
avatarShoeG = global.shoeAvatarG
avatarShoeB = global.shoeAvatarB

var dialoguePortsDirectory = "dialogue_ports/" + speaker + ".json"

if (file_exists(dialoguePortsDirectory))
{
// Load JSON file from Included Files
var _file = file_text_open_read(dialoguePortsDirectory);
var _json = "";
        
// Read the entire file content
while (!file_text_eof(_file)) {
      _json += file_text_read_string(_file);
      file_text_readln(_file); // Move to the next line
} 
file_text_close(_file);
		
var _struct = -1
        
try {
	_struct = json_parse(_json);
} catch (e) {
	show_error("Failed to parse JSON: " + string(e), true);
}

// Now you can use the data!

var sprite_name = _struct.sprite;
var char_name = _struct.char_name;
var expression_list = _struct.expressions;
var size = _struct.scale
var xOffset = _struct.xOffset
var yOffset = _struct.yOffset

}

image_alpha = alpha;

draw_set_font(fnt_default)
var _wrapped_text_notype = wrap_text(string_replace_all(dialogue_text, "`", ""), 800, 0.4);
if !typetext
	var _wrapped_text = wrap_text(dialogue_text_type, 800, 0.4); // Adjust max_width (300) and scale (0.4) as needed
else
	var _wrapped_text = _wrapped_text_notype


if room = rm_battle
	image_alpha = clamp(image_alpha,0,0.5)
	
if speaker = "cerberus"
{
	makeBox(x,y,x+1088,y+350,c_white,7,true)
}
else
{
	var line_count = getlines(_wrapped_text_notype) + 1;
	var height = 150;
	
	if (line_count >= 3) {
	  height = 150 + ((line_count - 2) * 60);
	}
		
	makeBox(x,y,x+1088,y+height,c_white,7,true)
}

draw_set_alpha(alpha)
// Draw speaker's name

draw_set_color(c_black);
draw_set_halign(fa_left);

if speaker == "player"
{
	draw_text_transformed(x + 150, y + 10, global.name, 0.45, 0.45, 0);
}
if speaker == "custom_A"
{
	draw_text_transformed(x + 150, y + 10, "Townsfolk 1", 0.45, 0.45, 0);
}
if speaker == "lazydude"
{
	draw_text_transformed(x + 150, y + 10, "Lazy Larry", 0.45, 0.45, 0);
}
if speaker == "cerberus"
{
	draw_text_transformed(x + 550, y + 10, "Charlie", 0.45, 0.45, 0);
}
if speaker == "hoot"
{
	draw_text_transformed(x + 150, y + 10, "Principal Hoot", 0.45, 0.45, 0);
}
if speaker == "cee"
{
	draw_text_transformed(x + 150, y + 10, "Cee", 0.45, 0.45, 0);
}
if (file_exists(dialoguePortsDirectory))
{
	draw_text_transformed(x + 150, y + 10, char_name, 0.45, 0.45, 0);
}

// Draw the dialogue text
yStart = 60
if speaker == "cerberus"
{
	xStart = 550
	//draw_text_transformed(x + 550, y + 60, _wrapped_text, 0.4,0.4,0);
}
else
{
	xStart = 150
	//draw_text_transformed(x + 150, y + 60, _wrapped_text, 0.4,0.4,0);
}

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
	if (tremble)
	{
		trembleX = random_range(-2,2)
		trembleY = random_range(-2,2)
		xStart += trembleX
		yStart += trembleY
	}
	draw_text_transformed(x+xStart,y+yStart,string_char_at(_wrapped_text,number),0.4,0.4,0)
	xStart -= trembleX
	yStart -= trembleY
	switch string_char_at(_wrapped_text,number)
	{
		case "i": case "l": case "'": case "I": case " ": case ",": case ".": case "!":
			xStart += (spacing * 0.5); // Narrower characters and space
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
if speaker == "player"
{
switch (expression) {
    case "angry_happy":
        image_index = 0;
        break;
    case "angry":
        image_index = 1;
        break;
    case "angry_sad":
        image_index = 2;
        break;
	case "surprised":
        image_index = 3;
        break;
	case "happy":
        image_index = 4;
        break;
	case "neutral":
        image_index = 5;
        break;
	case "sad":
        image_index = 6;
        break;
	case "sad_happy":
        image_index = 7;
        break;
	case "sad_neutral":
        image_index = 8;
        break;
	case "sad_sad":
        image_index = 9;
        break;
	case "surprised_super":
        image_index = 10;
        break;
    // Add more cases as needed
    default:
        image_index = 5; // Neutral expression
        break;
}
}

if speaker == "custom_A"
{
switch (expression) {
    case "explain":
        image_index = 1;
        break;
    default:
        image_index = 0; // Neutral expression
        break;
}
}
if speaker == "lazydude"
{
switch (expression) {
    case "lookdown":
        image_index = 0;
        break;
	case "sleep":
        image_index = 2;
        break;
	case "surprised":
        image_index = 3;
        break;
	case "angry":
        image_index = 4;
        break;
	case "pissed":
        image_index = 5;
        break;
	case "dead":
        image_index = random_range(6,8);
        break;
    default:
        image_index = 1; // Neutral expression
        break;
}
}

if (file_exists(dialoguePortsDirectory))
{
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

}

if speaker == "hoot"
{
switch (expression) {
	case "worried":
        image_index = 1;
        break;
    default:
        image_index = 0; // Neutral expression
        break;
}
}

if speaker == "cee"
{
switch (expression) {
	case "sad":
        image_index = 1;
        break;
	case "angry":
        image_index = 2;
        break;
	case "angry-happy":
        image_index = 3;
        break;
	case "oops": case "oop":
        image_index = 4;
        break;
	case "hurt": case "beat":
        image_index = 5;
        break;
	case "hurt-angry": case "beat-angry":
        image_index = 6;
        break;
	case "hurt-happy": case "beat-happy":
        image_index = 7;
        break;
	case "uwu": case "cute": case "flirt": case "sexy":
        image_index = 8;
        break;
	case "burp":
        image_index = 9;
        break;
	case "flirty": case "cuter":
        image_index = 10;
        break;
	case "festy": case "feast":
        image_index = 11;
        break;
	case "scream": case "yell":
        image_index = 12;
        break;
	case "exhausted": case "yawn": case "tired":
        image_index = 13;
        break;
	case "oh": case "o":
        image_index = 14;
        break;
	case "dying": case "scared":
        image_index = 15;
        break;
	case "derp": case "derpy": case "derpy af":
        image_index = 16;
        break;
	case "droop": case "drool":
        image_index = 17;
        break;
	case "creepy": case "gaster": //...what are you looking at?
        image_index = 18;
        break;
	case ":D": case "lenny-ripoff":
        image_index = 19;
        break;
	case "hoopy": case "happi":
        image_index = 20;
        break;
	case "shy": case "bruh": case "allison":
        image_index = 21;
        break;
	case "fear": case "shit":
        image_index = 22;
        break;
	case "frozen": case "shocked":
        image_index = 23;
        break;
	case "dead": case "shot":
        image_index = 24;
        break;
	case "XD": case "laughing":
        image_index = 25;
        break;
	case "gen-alpha": case "skull": case "slang": case "hell-nah": case "wtf": case "death": case "im-dying":
        image_index = 26;
        break;
	case "balloon": case "monstrosity":
        image_index = 27;
        break;
    default:
        image_index = 0; // Neutral expression
        break;
}

}

image_alpha = alpha

if speaker == "player"
{
	shader_set(global.avatar)
	
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
	
	if global.char_index = 0
	{
		draw_sprite_ext(spr_dialog_player, image_index, x, y + 20,image_xscale,image_yscale,0,image_blend,image_alpha);
	}
	else if global.char_index = 1
	{
		draw_sprite_ext(spr_dialog_player_duck, image_index, x, y + 20,image_xscale,image_yscale,0,image_blend,image_alpha);
	}
	else if global.char_index = 2
	{
		draw_sprite_ext(spr_dialog_player_racoon, image_index, x, y + 20,image_xscale,image_yscale,0,image_blend,image_alpha);
	}
}

image_blend = c_white

if speaker == "custom_A"
{
	draw_sprite_ext(spr_dialog_any, image_index, x, y + 20,image_xscale,image_yscale,0,c_white,image_alpha);
}
if speaker == "lazydude"
{
	draw_sprite_ext(spr_dialog_lazydude, image_index, x, y + 20,image_xscale,image_yscale,0,c_white,image_alpha);
}
if speaker == "cerberus"
{
	switch (expression) {
    case "puppy":
        sprite_index = spr_dialog_cerberus_puppy;
        break;
    case "happy":
        sprite_index = spr_dialog_cerberus_happy;
        break;
    // Add more cases as needed
    default:
        sprite_index = spr_dialog_cerberus_neutral; // Neutral expression
        break;
	}
	draw_sprite_ext(sprite_index, round(animated_index), x + 60, y + 20,image_xscale / 1.4,image_yscale / 1.5,0,c_white,image_alpha);
}
if speaker == "hoot"
{
	draw_sprite_ext(spr_dialog_hoot, image_index, x, y + 20,image_xscale,image_yscale,0,c_white,image_alpha);
}
if speaker == "cee"
{
	draw_sprite_ext(spr_dialog_cee, image_index, x, y + 20,image_xscale/5.27,image_yscale/5.27,0,c_white,image_alpha);
}

if (file_exists(dialoguePortsDirectory))
{
	if asset_get_index(sprite_name) != -1
	{
		var sprite_dialog = asset_get_index(sprite_name)
	}
	else
	{
		var sprite_dialog = spr_error_sprite
	}
	
	draw_sprite_ext(sprite_dialog, image_index, x + xOffset, y + 20 + yOffset,image_xscale * size,image_yscale * size,0,c_white,image_alpha);
}

shader_reset()

image_alpha = 0