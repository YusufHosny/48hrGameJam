itemNeededId = baseId;

bottleCount = 3;

interact = function(player) {
	bottleCount--;
	player.itemHeld = noItemId;

	if(bottleCount <= 0) {
		global.canpass1b = true;
	}
}