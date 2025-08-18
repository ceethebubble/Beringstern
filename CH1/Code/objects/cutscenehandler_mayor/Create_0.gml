draw_set_color(c_black);
audio_pause_sound(msc_beringsterntheme);
dialog_index = 0;
image_alpha = 0;
dialog_string = "";
draw_set_font(fnt_default);
typed_string = "";  // This will hold the current visible portion of the text
typing_speed = 0.5;   // Cant be above 1
char_index = 0;     // This will track the position in the string
skipping = true;
dialogSound = dlg_mayor;
dialog = true;
monthInWords = "";
dialogStart = false;
drawAlphaBlack = 0;

if current_month = 1
{
	monthInWords = "January "
}
if current_month = 2
{
	monthInWords = "Feburary "
}
if current_month = 3
{
	monthInWords = "March "
}
if current_month = 4
{
	monthInWords = "April "
}
if current_month = 5
{
	monthInWords = "May "
}
if current_month = 6
{
	monthInWords = "June "
}
if current_month = 7
{
	monthInWords = "July "
}
if current_month = 8
{
	monthInWords = "August "
}
if current_month = 9
{
	monthInWords = "September "
}
if current_month = 10
{
	monthInWords = "October "
}
if current_month = 11
{
	monthInWords = "November "
}
if current_month = 12
{
	monthInWords = "December "
}