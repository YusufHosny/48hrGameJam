y -= spd * ((dir == FACEUP )*2 -1);


distance -= spd;

if(distance <= 0){
	distance = MAXD;
	dir = dir == FACEUP? FACEDOWN: FACEUP; }
	














