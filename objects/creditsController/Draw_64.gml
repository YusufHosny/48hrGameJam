t++

for(var i = 0; i < array_length(creditValues); i++) {
	draw_set_color(c_white);
	draw_set_font(Bitpap)
	draw_text_transformed(xpos, -t + (i*40), creditValues[i], 2.5, 2.5, 0);
}
