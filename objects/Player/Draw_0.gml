draw_self();

// darkness surface

if(!surface_exists(dark)) {
	dark = surface_create(1366, 768);
	gpu_set_depth(-999);
}
surface_set_target(dark);

draw_clear_alpha(c_black, DARKNESS);
gpu_set_blendmode(bm_subtract);

for(var i = 1; i <= 3; i++) {
	noise = 1 - random(2);
	draw_set_alpha((1 - DARKNESS/3) * i/2)
	draw_circle_color(x - camera_get_view_x(view_camera[0]), 
	y - TILE_SIZE/2  - camera_get_view_y(view_camera[0]),
	3*TILE_SIZE - (i*TILE_SIZE/2) + noise
	, c_white, c_white, false);
}

surface_reset_target();
gpu_set_blendmode(bm_normal);
draw_surface(dark, camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]));