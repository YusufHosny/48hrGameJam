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