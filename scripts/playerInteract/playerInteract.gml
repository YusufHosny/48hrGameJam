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
				_checkLeft(itemNull, function(item) {
				itemHeld = item.itemId;
				instance_destroy(item);
				});
			
				// check for box (specific item consumer)
				_checkLeft(itemConsumer, function(iConsumer) {
				if(iConsumer.itemNeededId == itemHeld) {
					iConsumer.consume(itemHeld);
					itemHeld = noItemId;
				}
				});
				
			
				break;
				
			case FACERIGHT:
				_checkRight(itemNull, function(item) {
				itemHeld = item.itemId;
				instance_destroy(item);
				});
				
				_checkRight(itemConsumer, function(iConsumer) {
				if(iConsumer.itemNeededId == itemHeld) {
					iConsumer.consume(itemHeld);
					itemHeld = noItemId;
				}
				});
				
				break;
				
			case FACEUP:
				_checkUp(itemNull, function(item) {
				itemHeld = item.itemId;
				instance_destroy(item);
				});
				
				_checkUp(itemConsumer, function(iConsumer) {
				if(iConsumer.itemNeededId == itemHeld) {
					iConsumer.consume(itemHeld);
					itemHeld = noItemId;
				}
				});
				
				break;
				
			case FACEDOWN:
				_checkDown(itemNull, function(item) {
				itemHeld = item.itemId;
				instance_destroy(item);
				});
				
				_checkDown(itemConsumer, function(iConsumer) {
				if(iConsumer.itemNeededId == itemHeld) {
					iConsumer.consume(itemHeld);
					itemHeld = noItemId;
				}
				});
				
				break;
		}
	}
}