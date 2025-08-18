// change!
damage = 20 // how much damage
cooldown = 0.5 // in seconds, the cooldown
drain = 0.5 // how long to drain style points
alarm[0] = 1 * room_speed
image_angle = point_direction(x, y, obj_player.x, obj_player.y) - 180
image_xscale = 0;
image_yscale = 2;
target_scale = 2; // how big you want it to get
scale_speed = 0.1; // how fast it gets there
image_alpha = 0.2
image_blend = c_white
changing = false;
styleRadius = 20 // how big the style points radius is
audio_play_sound(sfx_shock,0,false)

// do NOT change!
timer = 0
draining = 0