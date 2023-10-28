// speed
sp = 7;

// held item
itemHeld = noItemId;

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
