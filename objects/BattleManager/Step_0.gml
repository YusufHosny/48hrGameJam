// get inputs and change selected attack
kUp = keyboard_check_pressed(ord("W"));
kDown = keyboard_check_pressed(ord("S"));
kLeft = keyboard_check_pressed(ord("A")); 
kRight = keyboard_check_pressed(ord("D")); 

if(kUp) selectedAttack = max(selectedAttack - 2, 0);
else if(kDown) selectedAttack = min(selectedAttack + 2, 3);
else if(kLeft && (selectedAttack == 1 || selectedAttack == 3)) selectedAttack = selectedAttack - 1;
else if(kRight && (selectedAttack == 0 || selectedAttack == 2)) selectedAttack = selectedAttack + 1;

handleTurn();

// damage blinker
if(tBlinkP > 0) {
	tBlinkP--;
	pObj.sprite_index = sPlayerBlinkShake;
} else pObj.sprite_index = sPlayer;

if(tBlinkB > 0) {
	tBlinkB--;
	bObj.sprite_index = sVincentBossBlink;
} else bObj.sprite_index = sVincentBoss;


// win cons
if(hpBoss <= 0) {
	// animation??
	switchRoom(RoofWin);

}
else if(hpPlayer <= 0) {
	switchRoom(RoofLose);

}