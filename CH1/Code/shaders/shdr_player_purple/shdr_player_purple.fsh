//
// Simple passthrough fragment shader with custom color manipulation
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    // Sample the texture color at the current texture coordinate
    vec4 tex = v_vColour * texture2D(gm_BaseTexture, v_vTexcoord);
    
    // Custom manipulation of the color channels
    vec4 pix = tex;
    tex.r = pix.r;
	pix.g = 0.6; 
	pix.b = 0.8;
	tex.b = 0.7;
    
    // Optional: Combine or adjust the channels to your liking
    // pix.r = (tex.r + tex.g) * 0.5;  // Example: mix red and green
    // pix.g = (tex.g + tex.b) * 0.5;  // Example: mix green and blue
    // pix.b = (tex.b + tex.r) * 0.5;  // Example: mix blue and red

    // Output the modified pixel color
    gl_FragColor = pix;
}
