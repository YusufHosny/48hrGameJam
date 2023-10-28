// item being shown in bottom left
var _h = display_get_gui_height();

if(itemHeld) draw_sprite(object_get_sprite(getItem(itemHeld)), -1, 5, _h - TILE_SIZE - 5);

// hearts for health

for(i = 0; i < hp; i++) {
	xpos = i * TILE_SIZE;
	ypos = 5;
	
	draw_sprite(sHeart, -1, xpos, ypos);
}

