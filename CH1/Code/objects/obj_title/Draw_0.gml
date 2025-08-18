// Draw Event of obj_title

// Define an easing function (ease-in-out)
function ease_in_out(t) {
    if (t < 0.5) {
        return 2 * t * t;
    } else {
        return -1 + (4 - 2 * t) * t;
    }
}

// Define the rise amount
var rise_amount = 160; // Pixels to rise after 2 seconds

// Check if 2 seconds have passed
var time_passed = (current_time - start_time) / 1000; // Convert milliseconds to seconds
var delay_over = (time_passed >= 1.3);

// Calculate elapsed time in seconds
var elapsed_time = delay_over ? time_passed - 2 : 0; // Start elapsed time after 2 seconds

// Calculate the easing factor (0 to 1)
var t = elapsed_time / duration; // Normalize elapsed time based on the duration
t = clamp(t, 0, 1); // Clamp t to ensure it stays between 0 and 1

// Apply easing function to calculate alpha and stretch
var eased_t = ease_in_out(t);

// Update alpha and stretch values
alpha = eased_t; // Smooth fade-in
stretch = 0.8 + 0.2 * eased_t; // Smooth stretch from 0.8 to 1
stretchy = 0.4 + 0.4 * eased_t; // Adjust stretch in the y-direction

// Debug messages
//show_debug_message("Alpha: " + string(alpha) + " Stretch: " + string(stretch));

// Set drawing alpha (transparency)
draw_set_alpha(alpha);

// Calculate screen center position
var screen_width = display_get_width();
var screen_height = display_get_height();

// Get sprite dimensions
var sprite_w = sprite_get_width(spr_title);
var sprite_h = sprite_get_height(spr_title);

// Calculate the position to center the sprite
var x_pos = screen_width / 2.8 - (sprite_w * stretch) / 2;
var y_pos = screen_height / 3 - (sprite_h * stretchy) / 2;

// Apply the rise effect after 2 seconds
if (delay_over) {
    y_pos -= ease_in_out(t) * rise_amount; // Move up by `rise_amount` pixels over time
}

// Draw the stretched and centered image
draw_sprite_ext(spr_title, 0, x_pos, y_pos, stretch, stretchy, 0, c_white, alpha);

// Reset alpha to full opacity for other draw calls
draw_set_alpha(1);