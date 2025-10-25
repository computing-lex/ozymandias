shader_type canvas_item;
uniform bool dev_mode = false;

void vertex() {
	// Called for every vertex the material is visible on.
}

void fragment() {
	// Called for every pixel the material is visible on.
	
	COLOR = texture(TEXTURE, UV);
	if (dev_mode) {
		COLOR = COLOR + vec4(0.1,0.2,1,0);
	}
}

//void light() {
//	// Called for every pixel for every light affecting the CanvasItem.
//	// Uncomment to replace the default light processing function with this one.
//}
