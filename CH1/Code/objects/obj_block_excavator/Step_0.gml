x += (xChange / 100)
if yChange
{
	y += (416 - y) / 10
}
if box
{
	if keyboard_check_pressed(vk_left) { chosen = "yes";}
	if keyboard_check_pressed(vk_right) { chosen = "no";}
}

if hover && ((keyboard_check_pressed(vk_enter)) or (keyboard_check_pressed(ord("Z")))) && !box && !global.cutscene
{
	hover2 = true;
	box = true;
	global.cutscene = true
}

image_blend = c_white;
hover_step()

xArm = x + 172;
yArm = y + -382;

xClaw = xClawPos + (xClawMovement * clawTimes)
yClaw = yClawPos + (yClawMovement * clawTimes)

if excavatorRotation < 0
{
	excavatorRotation = 0;
}
if excavatorRotation > 90
{
	excavatorRotation = 90;
}

if clawRotation < 0
{
	clawRotation = 0;
}
if clawRotation > 260
{
	clawRotation = 260;
}

if clawTimes > 90
{
	clawTimes = 90
}