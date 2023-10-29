// speed
sp = 3;

snd = false;

scl = 2;
image_xscale = scl;
image_yscale = scl;

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

// tutorial

if(global.tutorial) {
	NewTextBox("Press Space to skip text boxes");
	NewTextBox("Use WASD to move around...");
	NewTextBox("But you can't move when there \n are any text boxes")
	NewTextBox("Use E to interact with people and items");
	NewTextBox("You can't take items out of a room");
	NewTextBox("If you are defeated, you will \n be sent all the way here");
	NewTextBox("But you wont lose any progress \n on completed tasks");
	NewTextBox("Vincent... He roams this campus");
	NewTextBox("Don't let him catch you...");
	NewTextBox("With that I wish you luck on \n your journey to the top");
	global.tutorial = false;

}
