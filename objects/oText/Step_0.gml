
lerpProgress += (1-lerpProgress)/50;
textProgress +=global.textSpeed;

x1 = lerp(x1,x1Target,lerpProgress);
x2 = lerp(x2,x2Target,lerpProgress);

if(textProgress >= string_length(message)) audio_stop_sound(textBoxOST);

if (keyboard_check_pressed(vk_space))
{
	var _messageLength = string_length(message);
	if(textProgress >= _messageLength)
	{
		callback();
		instance_destroy();	
		if(instance_exists(oTextQueued))
		{
			with (oTextQueued) ticket--;
		}
		else {
			with(Player) playerLocked = false;
		}
	
	}
	else
	{
	if(textProgress >2)
	{
		textProgress = _messageLength;
	}
	}
}



