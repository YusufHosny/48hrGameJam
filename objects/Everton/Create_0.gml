

interact = function(player) {
	if(!(global.canpass2a)) {
		NewTextBox("HOLY FUCK I FORGOT TO SUBMIT MY \n LAB REPORT IN THE EM LAB");
		NewTextBox("CAN YOU SUBMIT IT FOR ME PLEASE?");
	}
	else {
		NewTextBox("THANK YOU, I CAN SLEEP SAFE \n AT NIGHT NOW");
		instance_destroy(self);
	}
}


