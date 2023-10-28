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
	if(place_meeting(x + _xsp, y, itemNull)) {
		while(!place_meeting(x+sign(_xsp), y, itemNull)) x += sign(_xsp);
		_xsp = 0;
	}
	
	// y axis
	if(place_meeting(x, y + _ysp, itemNull)) {
		while(!place_meeting(x, y+sign(_ysp), itemNull)) y += sign(_ysp);
		_ysp = 0;
	}
	
	
	// update
	x += _xsp;
	y += _ysp;
	
}