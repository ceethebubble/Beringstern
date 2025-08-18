var title_sprite = spr_play;

// Check if variables are already initialized
if (!variable_instance_exists(self, "alpha")) {
    alpha = 0;
}

if (!variable_instance_exists(self, "stretch")) {
    stretch = 0.8;
}

// Update alpha and stretch values
alpha += 0.01; // Adjust for fade speed
if (alpha > 1) alpha = 1; // Cap at full opacity

stretch += 0.01; // Adjust for stretch speed
if (stretch > 1) stretch = 1; // Cap at full size

// Set drawing alpha (transparency)
draw_set_alpha(alpha);

// Reset alpha to full opacity for other draw calls
draw_set_alpha(1);

// Draw the sprite with the calculated offset
draw_sprite_ext(title_sprite, frame_index, x, y, image_xscale, image_yscale, 0, c_white, alpha);
