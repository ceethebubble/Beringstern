varying vec2 v_vTexcoord;

const float threshold = 0.1; // Adjust for sensitivity
uniform float char_index;
const vec4 black_target = vec4(0.0,0.0,0.0,1.0);
const vec4 alpha_target = vec4(0.0,0.0,0.0,0.0);

vec4 red_target = vec4(1.0, 0.3, 0.5, 1.0);    // Example RGBA
vec4 outline_red_target = vec4(0.8, 0.29, 0.5, 1.0);    // Example RGBA
vec4 green_target = vec4(0.0, 0.3, 0.5, 1.0);  // Example RGBA
vec4 outline_green_target = vec4(0.0, 0.3, 0.5, 1.0);  // Example RGBA
vec4 blue_target = vec4(0.0, 0.3, 0.5, 1.0);   // Example RGBA
vec4 outline_blue_target = vec4(0.0, 0.3, 0.5, 1.0);   // Example RGBA
	
void main() {
	
	if (char_index == 0.0) {
        red_target = vec4(1.0, 0.3, 0.5, 1.0);
        outline_red_target = vec4(0.8, 0.29, 0.5, 1.0);
        green_target = vec4(0.0, 0.3, 0.5, 1.0);
        outline_green_target = vec4(0.0, 0.3, 0.5, 1.0);
        blue_target = vec4(0.0, 0.3, 0.5, 1.0);
        outline_blue_target = vec4(0.0, 0.3, 0.5, 1.0);
    } else if (char_index == 1.0) {
        red_target = vec4(0.8, 0.85, 0.4, 1.0);
        outline_red_target = vec4(0.8, 0.65, 0.33, 1.0);
        green_target = vec4(0.8, 0.5, 0.2, 1.0);
        outline_green_target = vec4(0.8, 0.5, 0.2, 1.0);
        blue_target = vec4(1.0, 0.7, 0.0, 1.0);
        outline_blue_target = vec4(0.9, 0.5, 0.1, 1.0);
    }
	else if (char_index == 2.0) {
        red_target = vec4(0.25, 0.48, 0.91, 1.0);
        outline_red_target = vec4(0.13, 0.16, 0.3, 1.0);
        green_target = vec4(0.45, 0.68, 1.0, 1.00);
        outline_green_target = vec4(0.0, 0.05, 0.05, 1.0);
        blue_target = vec4(0.75, 0.55, 0.5, 1.0);
        outline_blue_target = vec4(0.65, 0.35, 0.8, 1.0);
    }
	
    vec4 tex_color = texture2D(gm_BaseTexture, v_vTexcoord);
	
	if (tex_color.a >= 0.1)
	{
		gl_FragColor = red_target;
	}
	else{
        gl_FragColor = alpha_target;
	}
	
    // Check if the color is close to red
    if (abs(tex_color.r - 1.0) < threshold && tex_color.g < threshold && tex_color.b < threshold && tex_color.a >= 0.1) {
        gl_FragColor = red_target; // Replace red
    }
	else if (abs(tex_color.r - 0.6) < 0.2 && tex_color.g < threshold && tex_color.b < threshold && tex_color.a >= 0.1) {
        gl_FragColor = outline_red_target; // Replace outline red
    }
    // Check if the color is close to green
    else if (tex_color.r < threshold && abs(tex_color.g - 1.0) < threshold && tex_color.b < threshold && tex_color.a >= 0.1) {
        gl_FragColor = green_target; // Replace green
    }
	else if (tex_color.r < threshold && abs(tex_color.g - 0.6) < 0.2 && tex_color.b < threshold && tex_color.a >= 0.1) {
        gl_FragColor = outline_green_target; // Replace outline green
    }
    // Check if the color is close to blue
    else if (tex_color.r < threshold && tex_color.g < threshold && abs(tex_color.b - 1.0) < threshold && tex_color.a >= 0.1) {
        gl_FragColor = blue_target; // Replace blue
    }
	else if (tex_color.r < threshold && tex_color.g < threshold && abs(tex_color.b - 0.6) < 0.2 && tex_color.a >= 0.1) {
        gl_FragColor = outline_blue_target; // Replace outline blue
    }
	else if (abs(tex_color.r) < 0.3 && abs(tex_color.g) < 0.3 && abs(tex_color.b) < threshold && tex_color.a > 0.0) {
        gl_FragColor = black_target; // Replace black
    }
}
