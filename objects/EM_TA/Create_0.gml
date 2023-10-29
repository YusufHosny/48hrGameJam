itemNeededId = labrepId;

interact = function(player) {
	if(player.itemHeld == itemNeededId) {
		NewTextBox("Is this the lab report?");
		NewTextBox("This group is the worst I've seen \n in the past 20 years...");
	
		global.canpass2a = true;
		player.itemHeld = noItemId;
	}
	else {
		NewTextBox("They still haven't submitted their reports...")

	}
}