draw_set_color(make_color_rgb(0,0,204))
draw_set_alpha(alpha)
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_set_font(fnt_default)
draw_sprite_ext(sprite_index,0,20,20,1.5,1.5,0,c_white,alpha)

if string_length(global.name) > 9
{
	draw_text_transformed(30, 30, global.name, 0.6/(string_length(global.name)/10), 0.6, 0)
}
else
{
	draw_text_transformed(30, 30, global.name, 0.6, 0.6, 0)
}

draw_sprite_ext(spr_gui_fancy_numbers,floor(global.level),40,150,0.25,0.25,0,c_white,alpha)

var xp_progress = global.xp / level_requirement;  // Progress as a percentage (0 to 1)
var xp_max_width = 387 - 121;  // Maximum width (end x - start x)
var xp_scaled_width = xp_max_width * xp_progress;  // Scaled width based on progress

draw_set_color(make_color_rgb(0,0,204))
draw_rectangle(121, 196, 121 + xp_scaled_width, 170, false);

//MENU BACK

if hoverOnMenu
{
	draw_sprite_ext(spr_menu_back,0,1304,706,0.5,0.5,0,make_color_rgb(255,0,128),alpha)
}
else
{
	draw_sprite_ext(spr_menu_back,0,1304,706,0.5,0.5,0,c_blue,alpha)
}

draw_set_alpha(1)

if lvl_up
{
	draw_sprite_ext(spr_gui_lvl_up,lvl_up_index,400,400,1,1,0,c_white,1);
}

if statsAppear
{
	if !hoverOnStats
	{
		draw_sprite_ext(spr_gui_stats,0,1156,696,0.5,0.5,0,c_white,alpha)	
	}
	else
	{
		draw_sprite_ext(spr_gui_stats,0,1156,696,0.56,0.56,0,make_color_rgb(150,160,160),alpha)	
	}
}

if hoverOnInventory
{
	draw_sprite_ext(spr_gui_backpack,0,75,696,0.56,0.56,0,make_color_rgb(255,235,195),alpha)
}
else
{
	draw_sprite_ext(spr_gui_backpack,0,75,696,0.5,0.5,0,c_white,alpha)
}

if lensCircle
{
	if global.tutorial_progress = 1
	{
		draw_sprite_ext(spr_gui_lens_circle,0,1156,706,4,4,0,c_white,alpha)
	}
}

if statsOpened
{
	var _file = file_text_open_read("scripts/drawStats.txt");
	var _lines = [];

	while (!file_text_eof(_file)) {
	    array_push(_lines, file_text_read_string(_file));
	    file_text_readln(_file);
	}

	file_text_close(_file);
	
	draw_set_alpha(1)
	
	makeBox(450,60,950,730,make_color_rgb(0,255,128),9)
	draw_set_halign(fa_left)
	draw_set_valign(fa_middle)
	draw_set_color(c_teal)
	draw_set_font(fnt_fancy)
	draw_text(565,120,"STATS")
	
	draw_sprite_ext(spr_gui_stats_icon,0,460,190,0.5,0.5,0,c_white,1);
	draw_sprite_ext(spr_gui_stats_icon,1,470,290,0.5,0.5,0,c_white,1);
	draw_sprite_ext(spr_gui_stats_icon,2,470,390,0.5,0.5,0,c_white,1);
	draw_sprite_ext(spr_gui_icon_money_single,0,460,560,0.3,0.3,0,c_white,1);
	
	draw_set_font(fnt_default)
	draw_text_transformed(real(_lines[0]),real(_lines[1]),global.strength,real(_lines[3]),real(_lines[3]),0)
	draw_text_transformed(real(_lines[0]) + 20,real(_lines[4]),global.speed,real(_lines[3]),real(_lines[3]),0)
	draw_text_transformed(real(_lines[0]) + 30,real(_lines[5]),global.toughness,real(_lines[3]),real(_lines[3]),0)
	draw_text_transformed(real(_lines[0]) + 30,590,global.money,real(_lines[3]),real(_lines[3]),0)
	draw_text_transformed(real(_lines[0])-110 + 30,700,string(global.hp)+"/"+string(global.maxhp)+" HP",real(_lines[3])/1.5,real(_lines[3])/1.5,0)
}

if inventoryOpened
{
	draw_set_halign(fa_left)
	draw_set_valign(fa_middle)
	
	//Draw the rectangle background
	draw_set_color(make_color_rgb(255,185,235))
	draw_rectangle((display_get_width()/2.7)-90,350,(display_get_gui_width()/2.7)+330,610,false)
	
	//Draw the item to display
	if (ds_list_size(global.inventory) > global.inventory_slot-1) { // Check if the list has at least one item
		var item = ds_list_find_value(global.inventory, global.inventory_slot-1); // Get item at index 0
		
		draw_sprite_ext(spr_gui_pixel_items,item-1,735,495,6,6,1,c_white,1)
		//show_debug_message("Item 1: " + string(item));
		var itemInfo = global.inventoryData[(item - 1) * 4 + (1 /*this is what data it gets.*/ - 1)]
		var itemName = global.inventoryData[(item - 1) * 4 + (2 /*this is what data it gets.*/ - 1)]
	} else {
		//show_debug_message("No item");
	}
	
	//Draw the item pad
	draw_sprite_ext(spr_gui_item_pad,round(inventorSubImg),(display_get_width())/2.7,350,0.8,0.8,0,c_white,1)
	
	//Draw text that says what slot you're on
	draw_set_font(fnt_fancy)
	draw_set_color(make_color_rgb(129,7,57))
	draw_text_transformed((display_get_width()/2.7)-300,320,string(global.inventory_slot)+"/"+string(global.inventory_space),0.6,0.6,0)
	
	//Draw the info text
	
	if (ds_list_size(global.inventory) > global.inventory_slot-1)
	{
		draw_set_valign(fa_top)
		draw_text_transformed((display_get_width()/2.7)+160,470,wrap_text(itemInfo,190,0.3),0.3,0.3,1)
		draw_text_transformed((display_get_width()/2.7)-60,390,itemName,(0.3/(string_length(itemName))*12),0.3,1)
	}
}

if global.debug
{
	draw_set_font(fnt_pixel)
	draw_set_halign(fa_left)
	var hour = floor(global.gameTime)
	var minute = round((global.gameTime - hour) * 60)
	var addition = "AM"
	if hour > 12
	{
		hour = hour - 12
		var addition = "PM"
	}
	draw_text_transformed(20,600,string(hour)+":"+string(minute)+" "+addition,1,1,0)
}