//
// Simple passthrough fragment shader with custom color manipulation
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float u_time;

void main()
{
    // Sample the texture color at the current texture coordinate
    vec4 tex = v_vColour * texture2D(gm_BaseTexture, v_vTexcoord);
    
    // Custom manipulation of the color channels
    vec4 pix = tex;

	// Wrap u_time into 0–25 range for smooth fading
	float time = u_time;
	
	if (u_time >= 0.0 && u_time < 6.0) {
		// Night 0–6 (continuation of evening fade)
		float t = (u_time) / 6.; // 0 maps to 0.4, 6 maps to 1.0
		pix.r = tex.r * mix(0.3, 1.0, t);
		pix.g = tex.g * mix(0.3, 0.6, t);
		pix.b = tex.b * mix(0.5, 1.2, t);
	}
	else if (time >= 6.0 && time < 12.0) {
		// Morning 6–12
		float t = (time - 6.0) / 6.0;
		pix.r = tex.r * 1.0;
		pix.g = tex.g * mix(0.6, 1.0, t);
		pix.b = tex.b * mix(1.2, 1.0, t);
	}
	else if (time >= 12.0 && time < 20.0) {
		// Day 12–20
		pix.r = tex.r * 1.0;
		pix.g = tex.g * 1.0;
		pix.b = tex.b * 1.0;
	}
	else if (time >= 20.0 && time < 25.0) {
		// Evening → Night 20–25 (smooth through midnight)
		float t = (time - 20.0) / 5.0; // 20 → 0.0, 25 → 1.0
		pix.r = tex.r * mix(1.0, 0.3, t);
		pix.g = tex.g * mix(1.0, 0.3, t);
		pix.b = tex.b * mix(1.0, 0.5, t);
	}

    // Output the modified pixel color
    gl_FragColor = pix;
}
