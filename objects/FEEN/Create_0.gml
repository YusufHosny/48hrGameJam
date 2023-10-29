
interact = function(player) {
	if(!(global.canpass1a && global.canpass1b)) {
		NewTextBox("YOU CANNOT PASS UNTIL YOU PUT \n THE FLASKS WHERE THEY BELONGS ");
		NewTextBox("DO IT NOW!!!!");
	}
	else {
		NewTextBox("GOOD BUT NOT ENOUGH FOR A 10");
		instance_destroy(self);
	}
}
