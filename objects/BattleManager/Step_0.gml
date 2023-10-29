// get inputs and change selected attack
kUp = keyboard_check_pressed(ord("W"));
kDown = keyboard_check_pressed(ord("S"));
kLeft = keyboard_check_pressed(ord("A")); 
kRight = keyboard_check_pressed(ord("D")); 

if(kUp) selectedAttack = max(selectedAttack - 2, 0);
else if(kDown) selectedAttack = min(selectedAttack + 2, 3);
else if(kLeft && (selectedAttack == 1 || selectedAttack == 3)) selectedAttack = selectedAttack - 1;
else if(kRight && (selectedAttack == 0 || selectedAttack == 2)) selectedAttack = selectedAttack + 1;

// play move
kInteract = keyboard_check_pressed(ord("E"));

if(turnPlayer && kInteract) {
	var dmg = string_length(playerAttacks[selectedAttack])
	hpBoss -= dmg;
	NewTextBox(PLAYERNAME + " used \"" + playerAttacks[selectedAttack] + "\"");
	NewTextBox("it dealt " + string(dmg) + " damage...");
	turnPlayer = false;
}
else if(!turnPlayer)
{
	var atk = bossAttacks[floor(random(3.9))];
	var dmg = string_length(atk) * 0.5;
	hpPlayer -= dmg;
	NewTextBox("VINCENT used \"" + atk + "\"");
	NewTextBox("it dealt " + string(dmg) + " damage...");
	turnPlayer = true;
}