/// @description Insert description here
// You can write your code in this editor
if(step == 0)
{
	timer++;
	if(timer>=duration)
	{
		room_goto(roomTarget)
		
		state = 1;
	}
}
else if(state == 1)
{
		timer--;
		if(timer<=0)
		{
			instance_destroy();	
		}	
}		

alpha = timer/duration;


