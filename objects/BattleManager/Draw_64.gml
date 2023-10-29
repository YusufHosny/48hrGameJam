// draw attack options square
xlen = 325;
ylen = 100;
xpos = 10;
ypos = 5;
draw_set_alpha(1);
draw_set_color(c_black);
draw_rectangle(xpos, ypos, xpos + xlen, ypos + ylen, false);
draw_set_color(c_white);
draw_rectangle(xpos, ypos, xpos + xlen, ypos + ylen, true);

// draw attack options
for(var i = 0; i < array_length(playerAttacks); i++) {
	draw_set_font(Bitpap);
	if(i == selectedAttack) draw_set_color(c_yellow);
	draw_text(xpos + 50 + (xlen/2 * (i%2)), ypos + ylen/3 * floor(i/2), "> " + playerAttacks[i]);
	draw_set_color(c_white);

}

// draw healths