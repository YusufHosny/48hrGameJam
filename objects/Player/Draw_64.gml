var _itemSprite;
var _h = display_get_gui_height();
show_debug_message(_h);

switch(itemHeld) {
case bananaId:
	_itemSprite = sBanana;
	break;

}

if(itemHeld) draw_sprite(_itemSprite, -1, 5, _h - TILE_SIZE - 5);