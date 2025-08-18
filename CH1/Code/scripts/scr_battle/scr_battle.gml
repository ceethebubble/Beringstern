function scr_battle_load(_index)
{
    // Load index file
	global.aiPath = "";
    var index_path = "battlegroups/index.txt"; // adjust if in a diff folder
	if file_exists(index_path)
	{
		// Split by lines
		var file_id = file_text_open_read(index_path);
		var index_text = "";
		while (!file_text_eof(file_id))
		{
			index_text += file_text_read_string(file_id) + "|";
			file_text_readln(file_id); // move to next line
		}
		file_text_close(file_id);
		
		// Split by lines
		var index_list = string_split(index_text, "|");
		
		show_debug_message("Index List:" + string(index_list))
		
		show_debug_message("Array Length of Index List: " + string(array_length(index_list)))
		
		if _index <= array_length(index_list) - 2
		{
			var battle_file = index_list[_index]; // get the JSON file path
			
			// Load battle JSON
			var file_id2 = file_text_open_read("battlegroups/" + battle_file);
		
			if file_id2 = -1
			{
				show_debug_message("Failed to open file: " + battle_file);
			}
			
			// Read the JSON text from the file
			var json_text = ""
			while (!file_text_eof(file_id2))
			{
				json_text += file_text_read_string(file_id2);
				file_text_readln(file_id2); // move to next line
			}
			
			show_debug_message("JSON and location:\n" + "battlegroups/" + battle_file + "\n" + json_text)
			var data = json_parse(json_text);
			
			// Close the file after reading
			file_text_close(file_id2);
			
			// Assign values safely
			background        = string(data.background);
			music             = asset_get_index(string(data.music));
			battle_object     = asset_get_index(string(data.battle_object));
			opponent_name     = string(data.opponent_name);
			global.opponent_maxhp = real(data.opponent_maxhp);
			opponent_icon_sprite = asset_get_index(string(data.opponent_icon_sprite));
			global.playerx    = real(data.playerx);
			global.playery    = real(data.playery);
			global.battletime = real(data.battletime);
			global.styleGoal  = real(data.styleGoal);
			if variable_struct_exists(data, "ai") global.aiPath = "ai/enemies/bstrn." + string(data.ai) + ".ai"
		}
	}
	else
	{
		show_debug_message("index.txt not found!")
	}
}

function scr_battlegroups()
{
	scr_battle_load(global.battlegroup)
}

function start_encounter()
{
	instance_create_depth(0,0,-9999,obj_encounter_transition)
}

function scr_setup_ai()
{
	show_debug_message("AI Path: " + string(global.aiPath))
	var _file = string(global.aiPath)
	move_speed = get_json_file(_file,"move_speed");
	move_direction = 1; // 1 = right, -1 = left
	last_direction = 1; // previous direction.
}

function scr_ai()
{
	var _file = string(global.aiPath)
	
	if get_json_file(_file,"hover") = true
	{
		var ynext = enemy_y + (sin(time_) * get_json_file(_file,"hover_amount"))
		if (place_free(x, ynext))
			y = ynext
		else
			time_ -= 1 / room_speed
	}
	else
	{
		y = enemy_y
	}
	
	x = enemy_x
	
	if (move_direction != 0)
	{
		last_direction = move_direction;
		
		switch (get_json_file(_file,"movement"))
		{
			case "basic-x":
				var next_x = enemy_x + move_speed * move_direction;
				
				if (place_free(next_x, enemy_y))
				{
					enemy_x = next_x;
				}
				else
				{
					if (!move_in_progress)
					{
						move_in_progress = true;
						move_direction = 0;
						alarm[0] = room_speed * random_range(0.3, 0.8);
					}
				}
				// Switch direction at patrol edges
				if (enemy_x >= start_x + patrol_distance and move_direction = 1) or (enemy_x <= start_x - patrol_distance and move_direction = -1)
				{
					if (!move_in_progress)
					{
						move_in_progress = true;
						last_direction = move_direction;
						move_direction = 0;
						alarm[0] = room_speed * random_range(0.5, 1.5); // pause before turning
					}
				}
				break;
			case "basic-y":
				var next_y = enemy_y + move_speed * move_direction;
				
				if (place_free(enemy_x, next_y))
				{
					enemy_y = next_y;
				}
				else
				{
					if (!move_in_progress)
					{
						move_in_progress = true;
						move_direction = 0;
						alarm[0] = room_speed * random_range(0.3, 0.8);
					}
				}
				
				if (enemy_y >= start_y + patrol_distance and move_direction = 1) or (enemy_y <= start_y - patrol_distance and move_direction = -1)
				{
					if (!move_in_progress)
					{
						move_in_progress = true;
						last_direction = move_direction;
						move_direction = 0;
						alarm[0] = room_speed * random_range(0.5, 1.5); // pause before turning
					}
				}
				break;
		}
	}
}

function choose_attack(attacks) {
    var total = 0;
    for (var i = 0; i < array_length(attacks); i++) {
        total += attacks[i].chance;
    }
    
    var roll = irandom(total - 1);
    var running = 0;
    for (var i = 0; i < array_length(attacks); i++) {
        running += attacks[i].chance;
        if (roll < running) return attacks[i];
    }
}