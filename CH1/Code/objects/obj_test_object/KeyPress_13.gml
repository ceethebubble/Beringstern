//DONT CHANGE!
if dialog > 0
{
	dialog += 1
}

//CHANGE THIS PART

if hover && !global.cutscene && dialog == 0
{
	global.cutscene = true
	start_dialogue("testObject","HI!","default")
	dialog = 1;
}

if dialog == 2
{
	start_dialogue("testObject","Wassup?","default")
}

if dialog == 3
{
	start_dialogue("player","Good, how about you?","default")
}

if dialog == 4
{
	start_dialogue("testObject","OMG OMG I MADE NEW FRIEND FOR TEACHER BUBBLES\n YAYAYAYAYAYAYYAYAYA","happy")
}

if dialog == 5
{
	start_dialogue("lazydude","dumbie","default")
}

if dialog == 6
{
	start_dialogue("testObject","WHAT!?!?!","sad")
}

if dialog == 7
{
	start_dialogue("testObject","u make me sad", "sad")
}

if dialog == 8
{
	start_dialogue("testObject","NOW I AM MAD","angy")
}

if dialog == 9
{
	start_dialogue("lazydude","watcha gonna do stupi","default")
}

if dialog == 10
{
	start_dialogue("testObject","I DO THIS TO KILL U NOWW","angy")
}

if dialog == 11
{
	start_dialogue("lazydude","AAAAAAAAAAAAAAAAAAAAAAAAAAAA","dead")
}

if dialog == 12
{
	dialog = 0;
	global.cutscene = false;
	hover = false;
}

/*
Here is the code for the dialog to end:

dialog = 0;
global.cutscene = false;
hover = false;

*//**/