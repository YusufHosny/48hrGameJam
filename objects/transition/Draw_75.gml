/// @description Insert description here
// You can write your code in this editor
var guiH = display_get_gui_height();
var guiW = display_get_gui_width();

draw_set_color(color);
draw_set_alpha(alpha);

draw_rectangle(0,0, guiW, guiH, transition);

draw_set_color(c_black);
draw_set_alpha(1);