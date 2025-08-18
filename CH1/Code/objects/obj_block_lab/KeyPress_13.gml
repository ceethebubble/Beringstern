if dialog > 0
{
	dialog += 1
}

if dialogTime = 0 && global.job != "scientist"
{
	if dialog == 2
	{
		start_dialogue("cerberus","Oh LOOK!!!\nIt's new person!!!\nMe so happy!!","happy")
	}
	if dialog == 3
	{
		start_dialogue("cerberus","Welcome to Cerberun Lab!!!\nruff ruff ruff\nSorry you can't come in","normal")
	}
	if dialog == 4
	{
		start_dialogue("cerberus","But thank you for visiting!!!","happy")
	}
	if dialog == 5
	{
		start_dialogue("cerberus","Bark\nbark\nbark!!!!","happy")
	}
	if dialog == 6
	{
		start_dialogue("cerberus","Bye\nBye\nsee you later!","normal")
	}
	if dialog == 7
	{
		dialog = 0;
		global.cutscene = false;
		hover = false;
		dialogTime += 1;
	}
}
if dialogTime > 0 && global.job != "scientist"
{
	if dialog == 2
	{
		start_dialogue("cerberus","YOU are BACK!!! \n yippe!!\nit's our friend " + global.name,"happy")
	}
	if dialog == 3
	{
		start_dialogue("cerberus","We happy to see you\nyes yes!!\nHappy me!","normal")
	}
	if dialog == 4
	{
		start_dialogue("cerberus","But thank you for visiting!!!","happy")
	}
	if dialog == 5
	{
		dialog = 0;
		global.cutscene = false;
		hover = false;
		dialogTime += 1;
	}
}

if dialogTime = 0 && global.job = "scientist"
{
	if dialog == 2
	{
		start_dialogue("cerberus","HI "+string(global.name)+"!!\nWe happy to see you.","happy")
	}
	if dialog == 3
	{
		start_dialogue("player","I'm happy to see you too, Charlie!","happy")
	}
	if dialog == 4
	{
		start_dialogue("cerberus","Come in\nCome in\nCome in!!!","happy")
	}
	if dialog == 5
	{
		start_dialogue("cerberus","We have no doubt\nyou will be good\nat scientisting","happy")
	}
	if dialog == 6
	{
		start_dialogue("cerberus","Have a scientific day!\nEarn some money!!\nBe the best!!","normal")
	}
	if dialog == 7
	{
		start_dialogue("player","You too! Thanks!","happy")
	}
	if dialog == 8
	{
		dialog = 0;
		global.cutscene = false;
		hover = false;
		dialogTime += 1;
		fade_to_room(rm_science)
	}
}