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

if(sign(_xsp) == 1) dir = FACERIGHT;
else if(sign(_xsp) == -1) dir = FACELEFT;
if(sign(_ysp) == 1) dir = FACEDOWN;
else if(sign(_ysp) == -1) dir = FACEUP;

// movement sound
var moving = (_xsp != 0 || _ysp != 0);
 //sound
if(moving && !snd) {
	snd = true;
	audio_play_sound(walkingSound, 0, true);
}
else if(!moving) {
	audio_stop_sound(walkingSound);
	snd = false
}


if(!playerLocked) { 
	
	// check collisions and update positions
	playerCollision();

	// check for interact events
	playerInteract();
}

// invulnerability check/ decrease
if(iFrames > 0) {
	iFrames--;
	if(iFrames < 0.5*game_get_speed(gamespeed_fps)) {
		playerLocked = false;
	}
}
else {
	// animation
	image_xscale = scl;
	switch(dir) {
		case FACEUP:
			if(moving) sprite_index = sPlayerWB;
			else sprite_index = sPlayerIB;
			break;
		
		case FACEDOWN:
			if(moving) sprite_index = sPlayerWF;
			else sprite_index = sPlayerIF;
			break;
		
		case FACELEFT:
			if(moving) sprite_index = sPlayerWS;
			else sprite_index = sPlayerIS;
			break;
		
		case FACERIGHT:
			if(moving) sprite_index = sPlayerWS;
			else sprite_index = sPlayerIS;
			image_xscale = -scl;
			break;
	}
}
