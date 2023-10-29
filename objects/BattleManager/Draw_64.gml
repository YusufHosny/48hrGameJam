// draw attack options square
xlen = 160;
ylen = 30
xpos = 38;
ypos = 10;
draw_set_alpha(1);
draw_set_color(c_black);
draw_rectangle(5, 5, 5 + xlen, 5 + ylen, false);
draw_set_color(c_white);
draw_rectangle(5, 5, 5 + xlen, 5 + ylen, true);

// draw attack options
for(var i = 0; i < array_length(playerAttacks); i++) {
	if(i == selectedAttack) draw_set_color(c_yellow);
	draw_text_transformed(
	xpos + (xlen/2 * (i%2)),
	ypos + ylen/3 * floor(i/2), "> " + playerAttacks[i],
	0.5, 0.5, 0
	);
	draw_set_color(c_white);

}

// draw healths
//player
draw_sprite_stretched(sHealthP, -1, pObj.x - TILE_SIZE, pObj.y - 4 * TILE_SIZE - 20, floor(hpPlayer * 2), 12);

//enemy
draw_sprite_stretched(sHealthE, -1, bObj.x, bObj.y + 4 * TILE_SIZE, floor(hpBoss * 2), 12);