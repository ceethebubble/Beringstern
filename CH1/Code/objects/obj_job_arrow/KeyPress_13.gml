if job_selected = 0
{
global.job = "construction";
global.strength = 5;
global.speed = 1;
global.toughness = 2;
}
if job_selected = 1
{
global.job = "scientist";
global.strength = 4;
global.speed = 3;
global.toughness = 1;
}
if job_selected = 2
{
global.job = "wildlife";
global.strength = 0;
global.speed = 3;
global.toughness = 5;
}
if job_selected = 3
{
global.job = "proffesor";
global.strength = 2;
global.speed = 2;
global.toughness = 4;
}
show_debug_message(global.job);
fade_to_room(cts_mayor);