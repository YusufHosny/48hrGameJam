
global.canPass1 = global.canpass1a && global.canpass1b;


interact = function(player) {
	if(!global.canPass1) {
		NewTextBox("YOU CANNOT PASS UNTIL YOU PUT THE SHIT WHERE IT BELONGS NN");
		NewTextBox("heard that kid?");
	}
	else {
		NewTextBox("GOOD FUCKING SHIT BOYS");
		instance_destroy(self);
	}
}
