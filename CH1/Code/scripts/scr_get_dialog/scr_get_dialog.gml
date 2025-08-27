function get_dialog(_dialogState)
{
    var _base = "dialogue/" + _dialogState + ".json";
	var _night = "dialogue/" + _dialogState + "-n.json";

	// Check time
	if (global.gameTime >= 20 or global.gameTime < 7)
	   // Check if night file exists
	    if (file_exists(_night))
	        _path = _night;
	   else
	       _path = _base; // fallback to normal
	else
	    _path = _base; // daytime
	
    var json_data = get_json_file(_path, "dialogue");

    if ((dialog-1) < array_length(json_data))
	{
        var entry = json_data[dialog - 1];
		show_debug_message("Dialog: " + string(dialog - 1))
        if (variable_struct_exists(entry, "speaker"))
		{
			var _type_speed = 0.35
			if (variable_struct_exists(entry, "type_speed")) _type_speed = entry.type_speed
            start_dialogue(
                entry.speaker,
                string_replace_all(entry.dialog, "{global.name}", global.name),
                entry.expression,
                _type_speed
            );
        }
		else if (variable_struct_exists(entry, "choice"))
		{
			var choice = entry.choice;
			
			show_debug_message("Chosen: "+string(chosen))
			show_debug_message("If Chosen: "+string(choice.if_chosen))
			if (chosen == choice.if_chosen) // player picked the matching choice
			{
			   var line = choice.then;
			   start_dialogue(line.speaker, line.dialog, line.expression, line.type_speed ?? 0.35);
			}
			else
			{
				// Fallback branch
				if (variable_struct_exists(choice, "else"))
				{
					var jobs = choice.else.switch_job;
					var job_line;
				
					if (variable_struct_exists(jobs, global.job))
						job_line = variable_struct_get(jobs, global.job); // ✅ safe access
					else
						job_line = jobs.default; // fallback

					start_dialogue(job_line.speaker, job_line.dialog, job_line.expression, job_line.type_speed ?? 0.35);
				}
			}
			
			// handle optional showBox toggle
			if (variable_struct_exists(entry, "showBox"))
				showBox = entry.showBox;
		}
        else if (variable_struct_exists(entry, "showBox"))
		{
            showBox = entry.showBox;
		}
		
        else if (variable_struct_exists(entry, "end"))
		{
			
			if get_json_file(_path,"end_action") == "hoot"
			{
				global.flags[0] += 1;
				doorbellNoise = 0;
                showBox = false;
				if variable_instance_exists(self,"hover") hover = false;
			}
            global.cutscene = false;
            dialog = 0;
        }
    }
}