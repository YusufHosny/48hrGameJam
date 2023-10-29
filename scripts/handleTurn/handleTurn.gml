function handleTurn(){

	kInteract = keyboard_check_pressed(ord("E"));

	// your turn
	if(turnPlayer && kInteract && !wait) {
		wait = true;
		var dmg = string_length(playerAttacks[selectedAttack])
		hpBoss -= dmg;
		tBlinkB = 1 * game_get_speed(gamespeed_fps);
		NewTextBox(PLAYERNAME + " used \"" + playerAttacks[selectedAttack] + "\"");
		NewTextBox("it dealt " + string(dmg) + " damage...");
		NewTextBox("VINCENT is thinking about what to say...", function() {
			turnPlayer = false;
			wait = false;
			});
	} 
	// enemy turn
	else if(!turnPlayer && !wait)
	{
		wait = true;
		var atk = bossAttacks[floor(random(3.9))];
		var dmg = string_length(atk) * 0.5;
		hpPlayer -= dmg;
		tBlinkP = 1 * game_get_speed(gamespeed_fps);
		NewTextBox("VINCENT used \"" + atk + "\"");
		NewTextBox("it dealt " + string(dmg) + " damage...", function() {
			turnPlayer = true;
			wait = false;
			});
	}

}