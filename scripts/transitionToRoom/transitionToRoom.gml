// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
// room, dur, color

var Room = argument[0];
var Duration = argument[1];
var Color = argument[2];

var inst = instance_create_depth(0,0,0,transition);

with (inst)
{
	targetRoom = Room;
	duration = Duration;
	color = Color;
}