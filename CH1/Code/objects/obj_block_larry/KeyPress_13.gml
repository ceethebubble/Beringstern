if room = rms
{

if dialog > 0
{
	dialog += 1
}

if dialogTime == 0{
// 0 times talked to

if dialog == 2
{
	start_dialogue("lazydude","Huh...?","surprised")
	makeDialogSound(vl_larry_1)
}

if dialog == 3
{
	start_dialogue("lazydude","Oh, it's just a worker.","normal")
	makeDialogSound(vl_larry_2)
}

if dialog == 4
{
	start_dialogue("player","Yeah, hi! Can I get into the site please?","happy")
}

if dialog == 5
{
	start_dialogue("lazydude",  "Sure... let's see... What's your name?","lookdown")
	makeDialogSound(vl_larry_3)
}

if dialog == 6
{
	start_dialogue("player","Oh, my name is "+global.name+"!","happy")
}

if global.job == "construction"
{
	if dialog == 7
	{
		start_dialogue("lazydude","Ok, come in.","normal")
		makeDialogSound(vl_larry_4A)
	}

	if dialog == 8
	{
		start_dialogue("player","Thanks, Larry! Have a good day!","normal")
	}
	
	if dialog == 9
	{
		start_dialogue("lazydude", "Yeah, yeah,````` whatever kid.", "normal", 0.50)
		makeDialogSound(vl_larry_5A)
	}
	
	if dialog == 10
	{
		dialog = 0;
		global.cutscene = false;
		hover = false;
		dialogTime += 1;
		fade_to_room(rm_construction,true,1152,320)
	}
}
else
{
	if dialog == 7
	{
		start_dialogue("lazydude","Kid, you're not on our list.","normal")
		makeDialogSound(vl_larry_4B)
	}
	if dialog == 8
	{
		start_dialogue("lazydude","Are you blind? \nThis is the construction site, now get lost.","normal")
		makeDialogSound(vl_larry_5B)
	}
	if dialog == 9
	{
		dialog = 0;
		global.cutscene = false;
		hover = false;
		dialogTime += 1;
	}
}
}

if dialogTime == 1{
// 1 times talked to
	if global.job != "construction"
	{
		if dialog == 2
		{
			start_dialogue("lazydude","Did you not hear me?","angry")
			makeDialogSound(vl_larry_6)
		}
		if dialog == 3
		{
			if global.rating = "T"
			{
				start_dialogue("lazydude","Get your ass out of here! This \nis the second time I've told you.","angry")
				makeDialogSound(vl_larry_7)
			}
			else
			{
				start_dialogue("lazydude","Go away!","angry")
				makeDialogSound(vl_larry_7_C)
			}
		}
		if dialog == 4
		{
			dialog = 0;
			global.cutscene = false;
			hover = false;
			dialogTime += 1;
		}
	}
}

if dialogTime >= 2{
// 2 or more times talked to
	if global.job != "construction"
	{
		if dialog == 2
		{
			start_dialogue("lazydude","What don't you understand!?","pissed")
			makeDialogSound(vl_larry_8)
		}
		if dialog == 3
		{
			start_dialogue("lazydude","Get lost, kid!","angry")
			makeDialogSound(vl_larry_9)
		}
		if dialog == 4
		{
			dialog = 0;
			global.cutscene = false;
			hover = false;
			dialogTime += 1;
		}
	}
}

/*
if dialogTime >= 10 && dialogTime < 30{
// 2 times talked to
	if global.job != "construction"
	{
		if dialog == 2
		{
			start_dialogue("lazydude","im warning you.","pissed")
		}
		if dialog == 3
		{
			dialog = 0;
			global.cutscene = false;
			hover = false;
			dialogTime += 1;
		}
	}
}

if dialogTime >= 30 && dialogTime < 50{
// 2 times talked to
	if global.job != "construction"
	{
		if dialog == 2
		{
			start_dialogue("lazydude","im warning you.","dead")
		}
		if dialog == 3
		{
			dialog = 0;
			global.cutscene = false;
			hover = false;
			dialogTime += 1;
		}
	}
}

if dialogTime == 50{
// 2 times talked to
	if global.job != "construction"
	{
		show_message("Dear, "+global.name+"\n \n \n \n		i warned you		-- Larry");
		if(file_exists("progressFileDefault.bstrn"))
		{
			file_delete("progressFileDefault.bstrn")
			// Open or create the file for writing
			var file = file_text_open_write("mail inbox 1 - larry.bstnm"); 

			// Write text to the file
			file_text_write_string(file, "ur next"); 

			// Close the file
			file_text_close(file);
			
			// Open or create the file for writing
			var messagecreep = file_text_open_write("yourPalLarry.wav"); 

			// Write text to the file
			file_text_write_string(messagecreep, "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"); 

			// Close the file
			file_text_close(messagecreep);
		}
		game_end()
	}
}

*/

}
else
{
	if dialog > 0
{
	dialog += 1
}

if dialog == 2
{
	dialog = 0;
	global.cutscene = false;
	hover = false;
	fade_to_room(rms,true,576,640)
}
}
