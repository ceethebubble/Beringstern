alpha += 0.1;
animated_index += 1;

//typing script

if (dialog_index < string_length(dialogue_text))
{
    var prev_index = floor(dialog_index); // Store previous whole number
    dialog_index += typing_speed;
    var new_index = floor(dialog_index); // Store new whole number

    if (new_index > prev_index) // Only process new whole numbers
    {
        if string_char_at(dialogue_text, new_index) != "`"
        {
            dialogue_text_type += string_char_at(dialogue_text, new_index);
			if string_char_at(dialogue_text, new_index) == "&"
			{
				dialog_index += 1;
				dialogue_text_type += string_char_at(dialogue_text, new_index+1);
			}
        }
    }
}

if autoskip && !skip
{
	skip = true
	alarm[0] = autoskiptime * room_speed
}