if global.tutorial_progress = 0
	global.tutorial_progress = 1
	
give_money(random_range(global.level + 2,(global.level + 2) * 2),random_range(100,room_width-100),random_range(100,room_height-100))
xrandoms = random_range(300,700);
imgrandoms = random_range(0,7);
fade = 0.2
instance_create_depth(x,y,-99999,obj_shaker)
play_sfx(sfx_dong)