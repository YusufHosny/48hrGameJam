// check all inputs
kLeft = keyboard_check(ord("A"));
kRight = keyboard_check(ord("D"));
kUp = keyboard_check(ord("W"));
kDown = keyboard_check(ord("S"));


// move in 1 direction only via speed
if(kLeft) {
	x -= sp;
}
else if(kRight) {
	x += sp;
}
else if(kUp) {
	y -= sp;
}
else if(kDown) {
	y += sp;
}