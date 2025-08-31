show_debug_message("Hit! " + string(times))
clickedSpace = false
beatLine += 1
times += 1
if times > 3
{
	times = beatChanges[beatLine]
	timerFake = beatChanges[beatLine]
}