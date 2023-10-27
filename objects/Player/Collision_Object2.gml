/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4DDC9CF3
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "hp"
hp += -1;

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 4537CE78
/// @DnDArgument : "msg" "hp"
show_debug_message(string(hp));

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0FAAB920
/// @DnDArgument : "expr" "x-20"
/// @DnDArgument : "var" "x"
x = x-20;

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 725E9D39
/// @DnDArgument : "soundid" "Sound1"
/// @DnDSaveInfo : "soundid" "Sound1"
audio_play_sound(Sound1, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprites_Stacked
/// @DnDVersion : 1
/// @DnDHash : 07E23EFD
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "sprite" "heart"
/// @DnDArgument : "number" "6"
/// @DnDSaveInfo : "sprite" "heart"
var l07E23EFD_0 = sprite_get_width(heart);
var l07E23EFD_1 = 0;
for(var l07E23EFD_2 = 6; l07E23EFD_2 > 0; --l07E23EFD_2) {
	draw_sprite(heart, 0, x + 0 + l07E23EFD_1, y + 0);
	l07E23EFD_1 += l07E23EFD_0;
}