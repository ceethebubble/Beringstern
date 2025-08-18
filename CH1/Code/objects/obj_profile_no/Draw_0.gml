if obj_name_input.name_chosen = 1
{
	draw_set_font(fnt_default);
	if profile_no_chosen == 1
	{
		draw_set_color(make_color_rgb(255, 255, 0));
	}
	else
	{
		draw_set_color(make_color_rgb(219, 71, 255));
	}
	draw_text_transformed(780, 320, "Do not", 0.4, 0.4, 0);
}