draw_self();

// darkness surface

if(!surface_exists(dark)) {
	dark = surface_create(1366, 768);
}
surface_set_target(dark);

draw_clear_alpha(c_black, DARKNESS);
gpu_set_blendmode(bm_subtract);

for(var i = 1; i <= 3; i++) {
	noise = 2 - random(4);
	draw_set_alpha((1 - DARKNESS/3) * i/2)
	draw_circle_color(x, y - TILE_SIZE/2, 3*TILE_SIZE - (i*TILE_SIZE/2) + noise, c_white, c_white, false);
}


surface_reset_target();
gpu_set_blendmode(bm_normal);
draw_surface(dark, 0, 0);