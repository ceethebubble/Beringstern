if (!stopspammingbro)
{
	stopspammingbro = true
	audio_stop_all()
	global.hp = global.maxhp
	if global.room = rm_tutorial
		start_encounter()
	else
		fade_to_room(global.room)
}