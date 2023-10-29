t++

for(var i = 0; i < array_length(creditValues); i++) {
	draw_set_color(c_white);
	draw_set_font(Bitpap)
	draw_text_transformed(xpos, -t + (i*25), creditValues[i], 0.8, 0.8, 0);
}


if(jumpscare) {
	t2--
	if(t2<0) jumpscare = false;
	draw_sprite_stretched(sVincentBoss, -1, 0, 0, display_get_gui_width()*1.5, display_get_gui_height()*1.5);
}
