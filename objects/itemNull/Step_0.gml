var kInteract = keyboard_check(ord("E"));

if(kInteract) {
	other.itemHeld = itemId;
	instance_destroy(self);
}