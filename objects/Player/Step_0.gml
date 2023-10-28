_xsp = 0;
_ysp = 0;

// check all inputs
var _kLeft = keyboard_check(ord("A"));
var _kRight = keyboard_check(ord("D"));
var _kUp = keyboard_check(ord("W"));
var _kDown = keyboard_check(ord("S"));


// update movement based on inputs
_xsp = (_kRight - _kLeft) * sp;
_ysp = (_kLeft || _kRight) ? 0 : (_kDown - _kUp) * sp;


// check collisions and update positions
playerCollision();

