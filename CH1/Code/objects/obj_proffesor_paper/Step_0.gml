if showText = false
{
	easingthing -= 3
	y += easingthing
	if easingthing < -80
	{
		showText = true;
		easingthing = 0;
		y = 512;
		alarm[1] = 1;
	}
}

if ( global.flags[1] == (5 - questionsWrong) ) and ( questionPressed )
{
	alarm[0] = 1
}

show_debug_message(questionsWrong)
show_debug_message(global.flags[1])