
function switchRoom(targetRoom, spawnpoint = d_spawndef){
	instance_create_depth(0,0,-9999,transition);
	
	oGame.nxtSpt = spawnpoint;
	oGame.nxtDir = FACENONE;
	
	if(spawnpoint != d_spawndef) {
		oGame.nxtDir = instance_find(Player,0).dir;
	}
	
	room_goto(targetRoom);
	
}