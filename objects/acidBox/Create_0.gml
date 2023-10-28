itemNeededId = acidId;

bottleCount = 2;

interact = function(player) {
	if(player.itemHeld == acidId)
	{
	show_debug_message("I'm here!")	
	bottleCount--;
	player.itemHeld = noItemId;
	}
	
	if(bottleCount <= 0) {
		global.canpass1a = true;
	}
}