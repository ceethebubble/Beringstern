global.room_statement = "overworld"
global.maxhp = 60 + global.toughness * 20
application_surface_draw_enable(false)
weather = "normal"
day = current_day

if (day % 7 == 0)
{
	weather = "rain";      // every 7th day
}
else
{
	weather = "normal";    // all other days
}