/// @description Insert description here
// You can write your code in this editor

interact = function(player) {
	if(!(global.canpass2a)) {
		NewTextBox("HOLY FUCK I FORGOT TO SUBMIT MY LAB REPORT \n IN THE EM LAB");
		NewTextBox("CAN YOU SUBMIT IT FOR ME PLEASE?");
	}
	else {
		NewTextBox("THANK YOU, I CAN SLEEP SAFE AT NIGHT NOW");
		instance_destroy(self);
	}
}


