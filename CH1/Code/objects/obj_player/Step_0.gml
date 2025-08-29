if global.debug
	window_set_caption("Beringstern Chapter 1 - V" + GM_version + " (Debug)")
else
	window_set_caption("Beringstern Chapter 1 - V" + GM_version)

if (punch)
{
	image_speed = 1;
}
else
{
	hitPunch = false
	image_speed = 0;
	if global.cutscene
		image_index = 0;
}
	
// Set position
x = global.playerx;
y = global.playery;

if room != rm_battle
{
	global.bplayerx = global.playerx
	global.bplayery = global.playery
}

// Handle animation states
makeCharacterAnimations();
	
if !global.cutscene or decuts
{
	
	// --- MOVEMENT CONTROLS ---
	
	if (!punch)
	{
		
		// Right movement
		if (keyboard_check(ord("D")) && !keyboard_check(ord("A")) && place_free(x + collisionSpeed, y))
		{
			global.playerx += playerWalkSpeed;
			sprite_index = right;
			image_speed = playerWalkSpeed / 3;
			image_xscale = -scale;
		}
	
		// Left movement
		if (keyboard_check(ord("A")) && !keyboard_check(ord("D")) && place_free(x - collisionSpeed, y))
		{
			global.playerx -= playerWalkSpeed;
			sprite_index = left;
			image_speed = playerWalkSpeed / 3;
			image_xscale = scale;
		}
	
		// Down movement
		if (keyboard_check(ord("S")) && !keyboard_check(ord("W")) && place_free(x, y + collisionSpeed))
		{
			global.playery += playerWalkSpeed;
			sprite_index = down;
			image_speed = playerWalkSpeed / 3;
			image_xscale = scale;
		}
		
		// Up movement
		if (keyboard_check(ord("W")) && !keyboard_check(ord("S")) && place_free(x, y - collisionSpeed))
		{
			global.playery -= playerWalkSpeed;
			sprite_index = up;
			image_speed = playerWalkSpeed / 3;
			image_xscale = scale;
		}
	
		// --- SPRINTING ---
		if (keyboard_check(vk_space))
		{
			playerWalkSpeed = random_range(6.5, 10) * ((global.speed / 10) + 1);
		}
		else
		{
			playerWalkSpeed = 5.5 * ((global.speed / 10) + 1);
		}
	
		// --- IDLE STATE ---
		if (!keyboard_check(ord("W")) && !keyboard_check(ord("S")) && !keyboard_check(ord("A")) && !keyboard_check(ord("D")))
		{
			image_index = 0;
		}
	
	}

	// --- UI/KEY INDICATOR ---
	showKey = false;
	enterSize += (0.75 - enterSize) / 5;

	// --- COLLISION HANDLING ---
	
	collision(obj_block_excavator);
	collision(obj_block_larry);
	collision(obj_block_bus);
	collision(obj_test_object);
	collision(obj_construction_paper);
	collision(obj_block_lab);

	if (global.job == "wildlife")
	{
		collision(obj_block_forest);
	}

	collision(obj_interactable_block);
}

// --- AVATAR COLOR SETTINGS ---
avatarBaseR = global.avatarR;
avatarBaseG = global.avatarG;
avatarBaseB = global.avatarB;

avatarOutlineR = global.outlineAvatarR;
avatarOutlineG = global.outlineAvatarG;
avatarOutlineB = global.outlineAvatarB;

avatarFaceR = global.faceAvatarR;
avatarFaceG = global.faceAvatarG;
avatarFaceB = global.faceAvatarB;

avatarShoeR = global.shoeAvatarR;
avatarShoeG = global.shoeAvatarG;
avatarShoeB = global.shoeAvatarB;

// --- PUNCH ACTION ---
if (punch)
{
	if (sprite_index == left)
		sprite_index = spr_player_left_right_punch;
	if (sprite_index == down)
		sprite_index = spr_player_down_punch;
	if (sprite_index == up)
		sprite_index = spr_player_up_punch;
	if (sprite_index == right)
		sprite_index = spr_player_left_right_punch;
		
	if (image_index >= image_number - 1)
	{
		punch = false;
		if (sprite_index == spr_player_left_right_punch)
			sprite_index = left;
		if (sprite_index == spr_player_down_punch)
			sprite_index = down;
		if (sprite_index == spr_player_up_punch)
			sprite_index = up;
		if (sprite_index == spr_player_left_right_punch)
			sprite_index = right;
	}
}

// -- LOW HP IN BATTLE --

if global.flags[8] = false && global.hp < (global.maxhp / 3) && !global.cutscene && !instance_exists(obj_dialogue)
{
	global.flags[8] = true;
}