count = false;

jumpscare = true;
t2 = 1 * game_get_speed(gamespeed_fps);

NewTextBox("evo tol me you are running from me");
NewTextBox("is tha true????");
NewTextBox("WHY ARE YOU SOO MEANNN");
NewTextBox("I need to talk to you...");
NewTextBox("Dont run away from me");

interact = function(player) {
	count = true;
	player.playerLocked = true;
	
	// play jumpscare animations and sound
	t1 = 1 * game_get_speed(gamespeed_fps);
	

}