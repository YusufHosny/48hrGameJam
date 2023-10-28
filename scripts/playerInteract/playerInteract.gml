function playerInteract(){
	
	_checkLeft = function(checkFor, callback) {
		if(place_meeting(x-1, y, checkFor)) {
			var thing = instance_place(x-1, y, checkFor);
			callback(thing);
		}
	}
	
	_checkRight = function(checkFor, callback) {
		if(place_meeting(x+1, y, checkFor)) {
			var thing = instance_place(x+1, y, checkFor);
			callback(thing);
		}
	}
	
	_checkDown = function(checkFor, callback) {
		if(place_meeting(x, y+1, checkFor)) {
			var thing = instance_place(x, y+1, checkFor);
			callback(thing);
		}
	}
	
	_checkUp = function(checkFor, callback) {
		if(place_meeting(x, y-1, checkFor)) {
			var thing = instance_place(x, y-1, checkFor);
			callback(thing);
		}
	}
	
	
	// interact button
	var kInteract = keyboard_check(ord("E"));

	// check button triggered interactions
	if(kInteract) {
		switch(dir) {
			case FACELEFT:
				// check for item
				_checkLeft(inventoryItem, function(item) {
				itemHeld = item.itemId;
				instance_destroy(item);
				});
			
				// check for interactable (specific item consumer)
				_checkLeft(interactable, function(iactable) {
					iactable.interact(self);
				});
				
			
				break;
				
			case FACERIGHT:
				_checkRight(inventoryItem, function(item) {
				itemHeld = item.itemId;
				instance_destroy(item);
				});
				
				_checkRight(interactable, function(iactable) {
					iactable.interact(self);
				});
				
				break;
				
			case FACEUP:
				_checkUp(inventoryItem, function(item) {
				itemHeld = item.itemId;
				instance_destroy(item);
				});
				
				_checkUp(interactable, function(iactable) {
					iactable.interact(self);
				});
				
				break;
				
			case FACEDOWN:
				_checkDown(inventoryItem, function(item) {
				itemHeld = item.itemId;
				instance_destroy(item);
				});
				
				_checkDown(interactable, function(iactable) {
					iactable.interact(self);
				});
				
				break;
		}
	}
}