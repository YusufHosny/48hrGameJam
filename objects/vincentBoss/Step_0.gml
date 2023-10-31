if(count) 
{
	t1--;
	if(t1 <= 0)
	{
		switchRoom(finalBossRoom);
		instance_destroy(instance_find(Player, 0));
	}
}
else {
	t2--;

	jumpscare = t2>0;
}