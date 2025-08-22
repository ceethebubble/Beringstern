if (cover_sprite != -1) {
	makeBox(xCover-(700*scaleCoverFinal)+xCoverOffset,yCover-(700*scaleCoverFinal),xCover+(700*scaleCoverFinal)+xCoverOffset,yCover+(700*scaleCoverFinal),c_white,10)
    draw_sprite_ext(cover_sprite, 0, xCover+xCoverOffset, yCover,scaleCoverFinal,scaleCoverFinal,rotationCover,c_white,1);
} else {
    draw_text(200, 200, "No Cover");
}

draw_sprite_ext(spr_dj_brassel,0,192,576,djScale,djScale,0,c_white,1)