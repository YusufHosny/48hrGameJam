
global.canPass1 = global.canpass1a && global.canpass1b;


interact = function(player) {
	if(!global.canPass1) {
		NewTextBox("YOU CANNOT PASS UNTIL YOU PUT THE SHIT WHERE IT BELONGS NN", 0, player);
		NewTextBox("heard that kid?", 0, player);
	}
	else {
		NewTextBox("GOOD FUCKING SHIT BOYS", 0, player);
		instance_destroy(self);
	}
}
