count = false;

interact = function(player) {

	NewTextBox("evo tol me you are running from me");
	NewTextBox("is tha true????");
	NewTextBox("WHY ARE YOU SOO MEANNN", function() {count = true;});
	
	// play jumpscare animations and sound
	timer = 1 * game_get_speed(gamespeed_fps);

}