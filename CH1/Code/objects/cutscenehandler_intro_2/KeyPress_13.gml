if dialog != 0
{
	dialog += 1;
}
if dialog = 2
{
	start_dialogue("custom_A","It is indeed, a busy day!","default")
}
if dialog = 3
{
	start_dialogue("player","Huh? What do you mean?","surprised")
}
if dialog = 4
{
	start_dialogue("custom_A","Mayor Ben got kidnapped!","explain")
}
if dialog = 5
{
	start_dialogue("player","WHAT?!?!","surprised_super") //shock
}
if dialog = 6
{
	start_dialogue("custom_A","Yes! Yes!","explain")
}
if dialog = 7
{
	start_dialogue("custom_A","Police found out it was the evil \nBubbleblight, but they could not fight him.","default")
}
if dialog = 8
{
	start_dialogue("custom_A","He was too powerful!","explain")
}
if dialog = 9
{
	start_dialogue("player","That's horrible!","angry_sad")
}
if dialog = 10
{
	start_dialogue("player","So, so, horrible!","angry_sad")
}
if dialog = 11
{
	start_dialogue("custom_A","You should save Mayor Ben!","default")
}
if dialog = 12
{
	start_dialogue("player","Me?! But-but, I'm weak!","surprised_super")
}
if dialog = 13
{
	start_dialogue("custom_A","If you get stronger,\n you can outsmart Bubbleblight.","explain")
}
if dialog = 14
{
	if global.job = "construction"
	{
		start_dialogue("player","But I'm just a construction worker!","surprised")
	}
	if global.job = "scientist"
	{
		start_dialogue("player","But I'm just a recent scientist!","surprised")
	}
	if global.job = "wildlife"
	{
		start_dialogue("player","I'm a wildlife protector! \nI protect animals not harm them.","surprised")
	}
	if global.job = "proffesor"
	{
		start_dialogue("player","I'm just a proffesor!\nMy students can be older than me.","surprised")
	}
}
if dialog = 15
{
	start_dialogue("custom_A","You can use your skills to\n defeat Bubbleblight.","explain")
}
if dialog = 16
{
	start_dialogue("player","Maybe you're right.","happy")
}
if dialog = 17
{
	start_dialogue("custom_A","I will warn you though, Bubbleblight has minions who will try to destroy anyone they see!","explain")
}
if dialog = 18
{
	global.level = 0
	global.xp = 0;
	fade_to_room(rm_spawn)
}