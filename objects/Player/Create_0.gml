// speed
sp = 7;

// held item
itemHeld = noItemId;

pickUpItem = function(item) {
	if(itemHeld != noItemId) {
		dropItem(item);	
	}
	itemHeld = item.itemId;
	instance_destroy(item);
}

function dropItem(item) {
	xpos = item.x;
	ypos = item.y;
	
	instance_create_layer(xpos, ypos, layer_get_id("instances"), getItem(itemHeld));
}

// collision grid
colMap = layer_tilemap_get_id(layer_get_id("col"));

// current motion value for each frame
_xsp = 0;
_ysp = 0;

// direction facing
dir = FACELEFT;

// health
hp = 4;
iFrames = 0;

// textbox lock
playerLocked = false;

// darkness surface
dark = -1;
