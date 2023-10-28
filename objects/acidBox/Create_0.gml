itemNeededId = acidId;

bottleCount = 2;

interact = function(player) {
	bottleCount--;
	player.itemHeld = noItemId;

	if(bottleCount <= 0) {
		global.canpass1a = true;
	}
}