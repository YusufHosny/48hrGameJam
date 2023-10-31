
// set globals and flags
randomize();
global.textSpeed =.75;
global.gamePaused = false;

global.iCamera = instance_create_layer(0,0,layer,oCamera);


global.canpass1a = false;
global.canpass1b = false;

global.canpass2a = false;

// resize application surface to resolution
surface_resize(application_surface, RESOLUTION_W, RESOLUTION_H);

// list of no player rooms
noPRooms = [MainMenu, credits, finalBossRoom, EndGame];

// spawn position
player = noone;

// spawn pt and dir
nxtSpt = d_spawndef;
nxtDir = FACENONE;