draw_set_font(fnt_default);
draw_set_color(make_color_rgb(219, 71, 255))
draw_text_transformed(640, 550, "Press enter when you're finished.", 0.6, 0.6, 0);
draw_text_transformed(640, 100, "Type your name here:", 0.6, 0.6, 0);
draw_set_halign(fa_center)
draw_text_transformed(640, 150, player_name, 0.6, 0.6, 0);

if (gamepad_is_connected(0))
{
	draw_text_transformed(640, 510, "Current Letter: " + chr(64 + controller_value_letter), 0.6, 0.6, 0);
}
if name_chosen = 1 or name_showing = 1
{
	draw_set_font(fnt_default);
	draw_set_color(make_color_rgb(219, 129, 255))
	if player_name == "Marshmallow"
	{
		draw_name_input("nice name ;)")
	}
	else if player_name == "Scraps"
	{
		if sound_on = true
		{
			audio_play_sound(sfx_bass_drop,1,false)
		}
		draw_set_font(fnt_scraps);
		draw_name_input("ar u gonna build my house?")
		sound_on = false
	}
	else if ((player_name == "Bubbleblight") or (player_name == "bubbleblight"))
	{
		//show_debug_message(bubbleblightExplosion)
		//Start the Bubbleblight cutscene.
		if bubbleblightExplosion < 3
		{
			name_chosen = 0;
			draw_name_input("YOU CANT STEAL MY NAME!")
		}
		else
		{
			draw_name_input("WHAT! YOU CAN'T!")
			name_chosen = 1;
		}
		bubbleblightCutsceneShit += 1;
	}
	else if player_name == "idk"
	{
		draw_name_input("Pick a real name.")
		name_chosen = 0;
	}
	else if player_name == "lol"
	{
		draw_name_input("hehehaha")
	}
	else
	{
		draw_name_input("Confirm name?")
	}
	/*
	else if player_name == "name here"
	{
		draw_name_input("answer")
	}
	*/
	
	global.name = player_name
}

//Bubbleblight explosion
if (bubbleblightExplosion > 0) and (not bubbleblightExplosion2 == 1)
{
	draw_sprite_ext(spr_dumb_explosion,round(bubbleblightExplosion-1),640,260,2,2,0,c_white,1)
}