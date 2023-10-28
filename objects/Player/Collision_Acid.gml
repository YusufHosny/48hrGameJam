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

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 725E9D39
/// @DnDArgument : "soundid" "Sound1"
/// @DnDSaveInfo : "soundid" "Sound1"
audio_play_sound(Sound1, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3AEFFB5C
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)time_source = time_source_create(time_source_game,1,time_source_units_seconds,function()$(13_10){$(13_10)	sprite_index = PlayerSkin;$(13_10)}$(13_10));$(13_10)if (currentObject == Heart4) {$(13_10)        currentObject.visible = false;$(13_10)		currentObject = Heart3$(13_10)    } $(13_10)else if (currentObject == Heart3) {$(13_10)        currentObject.visible = false;$(13_10)		currentObject = Heart2$(13_10)    }$(13_10)else if (currentObject == Heart2) {$(13_10)        currentObject.visible = false;$(13_10)		currentObject = Heart1$(13_10)    }$(13_10)else if (currentObject == Heart1) {$(13_10)        currentObject.visible = false;$(13_10)		room_goto(GameOver);$(13_10)    }$(13_10)sprite_index = Blinking;$(13_10)collision_mask = -1;$(13_10)time_source_start(time_source)$(13_10)"
/// @description Execute Code

time_source = time_source_create(time_source_game,1,time_source_units_seconds,function()
{
	sprite_index = PlayerSkin;
}
);
if (currentObject == Heart4) {
        currentObject.visible = false;
		currentObject = Heart3
    } 
else if (currentObject == Heart3) {
        currentObject.visible = false;
		currentObject = Heart2
    }
else if (currentObject == Heart2) {
        currentObject.visible = false;
		currentObject = Heart1
    }
else if (currentObject == Heart1) {
        currentObject.visible = false;
		room_goto(GameOver);
    }
sprite_index = Blinking;
collision_mask = -1;
time_source_start(time_source)

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 63FB24DE
/// @DnDArgument : "expr" "x-40"
/// @DnDArgument : "var" "x"
x = x-40;