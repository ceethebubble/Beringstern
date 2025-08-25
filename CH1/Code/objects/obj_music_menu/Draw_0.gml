if (cover_sprite != -1) {
	makeBox(xCover-(700*scaleCoverFinal)+xCoverOffset,yCover-(700*scaleCoverFinal),xCover+(700*scaleCoverFinal)+xCoverOffset,yCover+(700*scaleCoverFinal),c_white,10)
    draw_sprite_ext(cover_sprite, 0, xCover+xCoverOffset, yCover,scaleCoverFinal,scaleCoverFinal,rotationCover,c_white,1);
} else {
    draw_text(200, 200, "No Cover");
}

draw_sprite_ext(spr_dj_brassel,0,192,576,djScale,djScale,0,c_white,1)

if vidExists
{
	videoData = video_draw()
	if videoData != -1
	{
		if videoData[0] == 0
		{
			draw_surface_ext(videoData[1],50,50,0.2,0.2,1,c_white,1)
		}
	}
}
else
{
	video_close()
}

draw_set_color(c_black)
draw_set_font(fnt_fancy)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_text_transformed(xCover+xCoverOffset,yCover+320,"By "+artist,scaleCoverFinal,scaleCoverFinal,rotationCover)