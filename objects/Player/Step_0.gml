_xsp = 0;
_ysp = 0;

// check all inputs
var _kLeft = keyboard_check(ord("A"));
var _kRight = keyboard_check(ord("D"));
var _kUp = keyboard_check(ord("W"));
var _kDown = keyboard_check(ord("S"));


// update movement based on inputs
_xsp = (_kRight - _kLeft) * sp;
_ysp = (_kLeft || _kRight) ? 0 : (_kDown - _kUp) * sp;

if(sign(_xsp) == 1) dir = FACERIGHT;
else if(sign(_xsp) == -1) dir = FACELEFT;
if(sign(_ysp) == 1) dir = FACEDOWN;
else if(sign(_ysp) == -1) dir = FACEUP;


// check collisions and update positions
playerCollision();

// check for items
var kInteract = keyboard_check(ord("E"));

switch(dir) {
	case FACELEFT:
		if(kInteract && place_meeting(x-1, y, itemNull)) {
			var item = instance_place(x-1, y, itemNull);
			itemHeld = item.itemId;
			instance_destroy(item);
		}
		break;
	case FACERIGHT:
		if(kInteract && place_meeting(x+1, y, itemNull)) {
			var item = instance_place(x+1,y,itemNull)
			itemHeld = item.itemId;
			instance_destroy(item);
		}
		break;
	case FACEUP:
		if(kInteract && place_meeting(x, y-1, itemNull)) {
			var item = instance_place(x, y-1, itemNull)
			itemHeld = item.itemId;
			instance_destroy(item);
		}
		break;
	case FACEDOWN:
		if(kInteract && place_meeting(x, y+1, itemNull)) {
			var item = instance_place(x, y+1, itemNull);
			itemHeld = item.itemId;
			instance_destroy(item);
		}
		break;

}