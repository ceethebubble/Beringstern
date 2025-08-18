function getAllValuesFromLine(text, key, index) {
    var lines = string_split(text, "\n");
    var result = [];

    for (var i = 0; i < array_length(lines); i++) {
        var current_line = string_trim(lines[i]);

        if (string_starts_with(current_line, key + ":")) {
            var value = string_delete(current_line, 1, string_length(key + ":"));
            value = string_trim(value);

            // Strip quotes if it's wrapped in them
            if (string_length(value) >= 2 && string_char_at(value, 1) == "\"" && string_char_at(value, string_length(value)) == "\"") {
                value = string_copy(value, 2, string_length(value) - 2);
            }

            array_push(result, value);
        }
    }

    // If index is provided, return just that match (1-based)
    if (argument_count > 2) {
        var idx = argument[2] - 1; // Convert to 0-based
        if (idx >= 0 && idx < array_length(result)) {
            return result[idx];
        } else {
            return ""; // Index out of range
        }
    }

    return result; // Return all matches if no index given
}

function get_dialog(_dialogState)
{
	switch(_dialogState)
	{
		case "hoot":
			switch (dialog)
			{
				case 1:
					start_dialogue("hoot","Oh?```````` Is someone there?","happy")
					break;
			case 2:
				start_dialogue("player", "Hey!", "happy", 0.50)
				break;
			case 3:
				start_dialogue("hoot", global.name + "?`````` Is that you?", "normal", 0.50)
				break;
			case 4:
				start_dialogue("hoot", "Why,``` it's so nice to see you again!", "normal", 0.50)
				break;
			case 5:
				start_dialogue("hoot", "What's going on now?", "normal", 0.50)
				break;
			case 6:
				showBox = true;
				break;
			case 7:
				if chosen = 2
				{
					start_dialogue("hoot", "Oh, it's okay!", "normal", 0.50)
				}
				else
				{
					switch (global.job)
					{
						case "construction":
							start_dialogue("hoot", "Ooh! Construction worker.````` Must be hard work.", "normal", 0.50)
							break;
						case "scientist":
							start_dialogue("hoot", "A scientist!`````` I knew you would listen to what I told you about chemistry.", "normal", 0.50)
							break;
						case "wildlife":
							start_dialogue("hoot", "A wildlife protector!````` I love animals!", "normal", 0.50)
							break;
						default:
							start_dialogue("hoot", "I know, right?", "normal", 0.50)
							break;
					}
				}
				showBox = false;
				break;
			case 8:
				start_dialogue("hoot", "Well, see ya!```` Nice talking to you.", "normal", 0.35)
				break;
			default:
				global.flags[0] += 1;
				global.cutscene = false;
				hover = false;
				dialog = 0;
				doorbellNoise = 0;
				showBox = false;
				break;
		}
		break;
	case "hoot01":
			switch (dialog)
			{
				case 1:
					start_dialogue("hoot","Hello, " + global.name + "!","happy")
					break;
				case 2:
					start_dialogue("player", "Hey!", "happy", 0.50)
					break;
				case 3:
					start_dialogue("hoot", "Thanks for visiting!", "normal", 0.50)
					break;
				case 4:
					start_dialogue("hoot", "Let me know if you need anything.", "normal", 0.50)
					break;
				default:
					global.flags[0] += 1;
					global.cutscene = false;
					hover = false;
					dialog = 0;
					doorbellNoise = 0;
					showBox = false;
					break;
		}
		break;
	}
}