

// item being shown in bottom left
// maybe scale up ?
var _itemSprite;
var _h = display_get_gui_height();

switch(itemHeld) {
case bananaId:
	_itemSprite = sBanana;
	break;

}

if(itemHeld) draw_sprite(_itemSprite, -1, 5, _h - TILE_SIZE - 5);

// hearts for health

for(i = 0; i < hp; i++) {
	xpos = i * TILE_SIZE;
	ypos = 5;
	
	draw_sprite(sHeart, -1, xpos, ypos);
	

}