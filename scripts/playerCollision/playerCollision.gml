function playerCollision(){
	var _col = false;
	
	// tile checks
	
	// x axis
	if(tilemap_get_at_pixel(colMap, x + _xsp, y)) {
		x -= x mod TILE_SIZE;
		if(sign(_xsp)) x += TILE_SIZE - 1;
		_xsp = 0;
	}
	
	// y axis
	if(tilemap_get_at_pixel(colMap, x, y + _ysp)) {
		y -= y mod TILE_SIZE;
		if(sign(_ysp)) y += TILE_SIZE - 1;
		_ysp = 0;
	}
	
	
	// item checks 
	if(place_meeting(x + _xsp, y, inventoryItem)) {
		while(!place_meeting(x+sign(_xsp), y, inventoryItem)) x += sign(_xsp);
		_xsp = 0;
	}
	
	if(place_meeting(x, y + _ysp, inventoryItem)) {
		while(!place_meeting(x, y+sign(_ysp), inventoryItem)) y += sign(_ysp);
		_ysp = 0;
	}
	
	// interactable checks
	if(place_meeting(x + _xsp, y, interactable)) {
		while(!place_meeting(x+sign(_xsp), y, interactable)) x += sign(_xsp);
		_xsp = 0;
	}
	
	if(place_meeting(x, y + _ysp, interactable)) {
		while(!place_meeting(x, y+sign(_ysp), interactable)) y += sign(_ysp);
		_ysp = 0;
	}
	
	// damage dealer checks
	if(place_meeting(x + _xsp, y, damageDealer)) {
		hp -= 1;
		_xsp = -4 *_xsp;
		getHit();
		if(hp == 0){
			switchRoom(EndGame);
			instance_destroy(self);
		}
	}
	
	if(place_meeting(x, y + _ysp, damageDealer)) {
		hp -= 1;
		_ysp = -4 * _ysp;
		getHit();
		if(hp == 0){
			switchRoom(EndGame);
			instance_destroy(self);
		}
	}
	
	// Healer checks
	if(place_meeting(x + _xsp, y, HealthHealer)) {
		hp+=1;
		global.healer1 = true;
	}
	
	if(place_meeting(x, y + _ysp, HealthHealer)) {
		hp+=1;
		global.healer1 = true;
	}
	
	// update
	x += _xsp;
	y += _ysp;
	
}

function getHit() {
	audio_play_sound(HurtSong, 1, false);
	iFrames = 1 * game_get_speed(gamespeed_fps);
	sprite_index = sPlayerBlink;
	playerLocked = true;
	
}
