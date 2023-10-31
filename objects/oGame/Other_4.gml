var s = true;

switch(room) {

	case spiral1:
	case spiral2:
	case spiral3:
		audio = SpiralOST;
		break;
	
	case ChemistryLab:
		audio = CLabOST;
		break;
		
	case EMLevel:
		audio = EMLabOST;
		break;
		
	case MainMenu:
		audio = MMOST;
		break;
		
	case ElectronicsLab:
		audio = ELabOST;
		break;
		
	case finalBossRoom:
		audio = BossOST;
		break;
		
	default:
		s = false;
		break;

}

if(s) audio_play_sound(audio, 0, true);

// if we are in a room that will have a player
if(!array_contains(noPRooms, room)) {
	// create player if missing
	if(instance_find(Player, 0) == noone) {
		sp = instance_find(d_spawndef, 0);
		player = instance_create_layer(sp.x, sp.y, "Instances", Player);
	} else
	{
		player = instance_find(Player, 0);
	}	
	
	// go to spawn point
	spt = instance_find(nxtSpt, 0);
	player.x = spt.x + (2 * TILE_SIZE * ((nxtDir == FACERIGHT)-(nxtDir == FACELEFT)));
	player.y = spt.y + (2 * TILE_SIZE * ((nxtDir == FACEDOWN)-(nxtDir == FACEUP)));
	
	// make player on top of all instances
	player.depth = -1000;
}

