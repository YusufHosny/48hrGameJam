
interact = function(player) {
	if(!(global.canpass1a && global.canpass1b)) {
		NewTextBox("YOU CANNOT PASS UNTIL YOU PUT \n THE SHIT WHERE IT BELONGS NN");
		NewTextBox("heard that kid?");
	}
	else {
		NewTextBox("GOOD FUCKING SHIT BOYS");
		instance_destroy(self);
	}
}
