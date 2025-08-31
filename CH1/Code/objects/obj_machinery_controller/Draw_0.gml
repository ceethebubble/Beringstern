if global.debug draw_text(60,60,clickSpaceNow)
if global.debug draw_text(500,60,beat_phase)

// amount of "early cutoff"
var cutoff = 0.1;

// remap beat_phase so it hits 1 at (1 - cutoff)
var phase = beat_phase / (1 - cutoff);
phase = clamp(phase, 0, 1); // stop it from going over 1

var percentMultiplied = 100 + ((1 - phase) * 600)

if clickedWhileNot
{
	makeBox(100,500,700,600,make_color_rgb(0,0,128),6);
	makeBox(100,500,percentMultiplied,600,c_orange,0);
}
else
{
	makeBox(100 - rectangleSize,500 + (rectangleSize / 1.5),700 + rectangleSize,600 - (rectangleSize / 1.5),c_blue,6);
	makeBox(100 - rectangleSize,500 + (rectangleSize / 1.5),percentMultiplied - rectangleSize,600 - (rectangleSize / 1.5),c_yellow,0);
}