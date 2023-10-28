itemNeededId = bananaId;

interact = function(player) {
	if(itemNeededId == player.itemHeld) {
		sprite_index = sMonkeBanana;
		player.itemHeld = noItemId;
	}
}