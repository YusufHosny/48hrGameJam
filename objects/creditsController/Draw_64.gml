t++

for(var i = 0; i < array_length(creditValues); i++) {
	draw_set_color(c_white);
	draw_set_font(Bitpap)
	draw_text_transformed(xpos, -t + (i*40), creditValues[i], 1.25, 1.25, 0);
}
