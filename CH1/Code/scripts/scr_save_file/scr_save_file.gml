// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function saveFile()
{
	var _struct =
	{
		avatar_name: global.name_of_avatar,
		job: global.job,
		player_name: global.name,
		player_x: global.playerx,
		player_y: global.playery,
		bplayer_x: global.bplayerx,
		bplayer_y: global.bplayery,
		save_room: global.room,
		voice_lines: global.voicelines,
		xp: global.xp,
		level: global.level,
		character: global.char_index,
		rating: global.rating,
		money: global.money,
		strength: global.strength,
		player_speed: global.speed,
		toughness: global.toughness,
		tut_progress: global.tutorial_progress,
		
		avatarR: global.avatarR,
		avatarG: global.avatarG,
		avatarB: global.avatarB,
		
		outlineAvatarR: global.outlineAvatarR,
		outlineAvatarG: global.outlineAvatarG,
		outlineAvatarB: global.outlineAvatarB,
		
		faceAvatarR: global.faceAvatarR,
		faceAvatarG: global.faceAvatarG,
		faceAvatarB: global.faceAvatarB,
		
		shoeAvatarR: global.shoeAvatarR,
		shoeAvatarG: global.shoeAvatarG,
		shoeAvatarB: global.shoeAvatarB,
		
		inventory: ds_list_to_array(global.inventory),
		flags: global.flags,
		
		hp: global.hp,
		maxhp: global.maxhp
		
	};
	var _string = json_stringify(_struct);
	var _prettyString = json_pretty(_string);
	
	var _file = file_text_open_write("progressFileDefault.bstrn");
	file_text_write_string(_file,_prettyString);
	
	file_text_close(_file);
}

/// loadFile(fade)
/// @param fade If true, fades to the room
/// @param room_go If true, goes to the room

function loadFile(fade = true,room_go = true)
{
	if(file_exists("progressFileDefault.bstrn"))
	{
		var _file = file_text_open_read("progressFileDefault.bstrn");
		var _json = "";
		while (!file_text_eof(_file))
		{
			_json += file_text_read_string(_file);
			file_text_readln(_file); // move to next line
		}
		var _struct = json_parse(_json);
		
		if variable_struct_exists(_struct, "xp")
		{
			global.xp = _struct.xp;
		}
		else
		{
			show_message("Error: Sorry, your XP has not been saved properly. Save data may be corrupted- Team CGR is sorry! Please contact this issue to teamcgrofficial@gmail.com Thanks~!")
			global.xp = 0;
		}
		if variable_struct_exists(_struct, "level")
		{
			global.level = _struct.level;
		}
		else
		{
			show_message("Error: Your level has not been saved. We're sorry! Please report this issue to teamcgrofficial@gmail.com, thank you!")
			global.level = 0;
		}
		
		if variable_struct_exists(_struct, "money")
		{
			global.money = _struct.money;
		}
		else
		{
			show_message("Error: Money has not saved!")
			global.money = 0;
		}
		
		if variable_struct_exists(_struct, "strength")
		{
			global.strength = _struct.strength;
		}
		else
		{
			show_message("Error: STRENGTH has not saved!")
			global.strength = 0;
		}
		if variable_struct_exists(_struct, "player_speed")
		{
			global.speed = _struct.player_speed;
		}
		else
		{
			show_message("Error: SPEED has not saved!")
			global.speed = 0;
		}
		if variable_struct_exists(_struct, "toughness")
		{
			global.toughness = _struct.toughness;
		}
		else
		{
			show_message("Error: TOUGHNESS has not saved!")
			global.toughness = 0;
		}
		global.char_index = _struct.character;
		
		if _struct.save_room != rm_science or _struct.save_room != rm_wildlife
			global.room = _struct.save_room
		else
			global.room = rm_workstation
		
		if room_go
		{
			if fade = true
				fade_to_room(global.room);
			else
				room_goto(global.room)
		}
		
		if variable_struct_exists(_struct, "flags")
		{
			var savedFlags = _struct.flags;
			
			// Loop through the array elements
			var len = array_length(savedFlags);
			for (var i = 0; i < len; i++) {
				global.flags[i] = savedFlags[i];
			}
		}

		global.name_of_avatar = _struct.avatar_name;
		global.job = _struct.job;
		global.name = _struct.player_name;
		if variable_struct_exists(_struct,"player_x") && variable_struct_exists(_struct,"player_y")
		{
			global.playerx = _struct.player_x;
			global.playery = _struct.player_y;
		}
		if variable_struct_exists(_struct, "bplayer_x")
		{
			global.bplayerx = _struct.bplayer_x;
		}
		if variable_struct_exists(_struct, "bplayer_y")
		{
			global.bplayery = _struct.bplayer_y;
		}
		global.cutscene = false;
		
		if variable_struct_exists(_struct,"hp")
		{
			global.hp = _struct.hp
			global.maxhp = _struct.maxhp
		}
		else
		{
			global.hp = 100
		}
		
		if variable_struct_exists(_struct, "tut_progress")
		{
			global.tutorial_progress = _struct.tut_progress;
		}
		else
		{
			show_message("Error: Tutorial progress has not saved!")
			global.tutorial_progress = 0;
		}
		
		
		if _struct.avatar_name = "character custom"
		{
			global.avatarR = _struct.avatarR
			global.avatarG = _struct.avatarG
			global.avatarB = _struct.avatarB
		
			global.outlineAvatarR = _struct.outlineAvatarR
			global.outlineAvatarG = _struct.outlineAvatarG
			global.outlineAvatarB = _struct.outlineAvatarB
		
			global.faceAvatarR = _struct.faceAvatarR
			global.faceAvatarG = _struct.faceAvatarG
			global.faceAvatarB = _struct.faceAvatarB
		
			global.shoeAvatarR = _struct.shoeAvatarR
			global.shoeAvatarG = _struct.shoeAvatarG
			global.shoeAvatarB = _struct.shoeAvatarB
			
		}
		
		if variable_struct_exists(_struct, "inventory")
		{
			global.inventory = ds_list_create(); // Create new DS List
			if (is_array(_struct.inventory)) {
				for (var i = 0; i < array_length(_struct.inventory); i++) {
					ds_list_add(global.inventory, _struct.inventory[i]);
				}
			}
		}
		else
		{
			show_message("Inventory has not been found. If you have been recently editing your save file, please do NOT play with it! If you think you know what you're doing, make sure you ALWAYS make backups.");
		}

		
		file_text_close(_file);
	}
	else
	{
		show_message("Error: no save file found! Team CGR is sorry! :( Please report this issue to teamcgrofficial@gmail.com Thank you!")
	}
}