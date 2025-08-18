if !global.cutscene or lensCircle
{
	if alpha < 1
	{
		alpha += 0.1
	}
}
if global.cutscene
{
	if !lensCircle
	{
		if alpha > 0
		{
			alpha -= 0.1
		}
	}
}


// Get mouse position
var mouse_x_gui = device_mouse_x_to_gui(0); // GUI coordinates
var mouse_y_gui = device_mouse_y_to_gui(0);

// Check if mouse is over the button
if (mouse_x_gui >= 1304 - 64 && mouse_x_gui <= 1428 && mouse_y_gui >= 706 - 64 && mouse_y_gui <= 834) {
    
	hoverOnMenu = true
    // Check if the button is clicked
    if (mouse_check_button_pressed(mb_left)) {
		event_user(0)
    }
}
else
{
	hoverOnMenu = false
}
if (mouse_x_gui >= 1176 - 64 && mouse_x_gui <= 1236 && mouse_y_gui >= 706 - 64 && mouse_y_gui <= 834) && (statsAppear) {
    
	if !global.cutscene or lensCircle
	{
	hoverOnStats = true
    // Check if the button is clicked
    if (mouse_check_button_pressed(mb_left)) {
		if global.tutorial_progress = 1
		{
			global.tutorial_progress = 2;
			lensCircle = false;
		}
		
		show_debug_message("You clicked the stats button!")
		global.cutscene = true;
		show_debug_message("Stats opened!")
		statsOpened = true;
    }
	}
}
else
{
	hoverOnStats = false
}

if (mouse_x_gui >= 75 - 64 && mouse_x_gui <= 131 && mouse_y_gui >= 706 - 64 && mouse_y_gui <= 834) {
    
	hoverOnInventory = true
    // Check if the button is clicked
    if (mouse_check_button_pressed(mb_left)) {
		show_debug_message("You clicked the inventory button!")
		global.cutscene = true;
		show_debug_message("Inventory opened!")
		inventoryOpened = true;
    }
}
else
{
	hoverOnInventory = false
}


if global.level = 0
{
	level_requirement = global.config_data.xp_requirements.level_1
}
else if global.level = 1
{
	level_requirement = global.config_data.xp_requirements.level_2
}
else if global.level = 2
{
	level_requirement = global.config_data.xp_requirements.level_3
}
else if global.level = 3
{
	level_requirement = global.config_data.xp_requirements.level_4
}
else if global.level = 4
{
	level_requirement = global.config_data.xp_requirements.level_5
}
else if global.level = 5
{
	level_requirement = global.config_data.xp_requirements.level_5
}

if global.xp >= level_requirement
{
	if global.level = 5 // max level
	{
		global.xp = level_requirement
	}
	else
	{
		global.xp = level_requirement - global.xp
		global.level += 1;
		lvl_up_index = 0;
		lvl_up = true;
	}
}

if global.xp < 0
{
	global.xp = 0;
}

lvl_up_index += 1;

if lvl_up_index > 24
{
	lvl_up = false;
}

if global.tutorial_progress > 1
{
	statsAppear = true;
}

if global.tutorial_progress = 1
{
	if !global.cutscene
	{
		global.cutscene = true;
		statsAppear = true;
		lensCircle = true;
	}
}

inventorSubImg += 0.25

if global.hp <= 0
{
	room_goto(cts_game_over)
}