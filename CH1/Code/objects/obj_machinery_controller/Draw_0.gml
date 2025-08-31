draw_set_color(c_white)
if global.debug draw_text(40,40,debugDisplay)
draw_set_color(c_lime)
var time = 3 - timerFake
var maxTime = 3 - beatChanges[beatLine]
var timePercent = time / maxTime
draw_rectangle(150,600,150 + timePercent * 600,630,false)