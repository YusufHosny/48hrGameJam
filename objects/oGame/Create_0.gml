/// @description Initialize and Globals
// You can write your code in this editor
randomize();
global.textSpeed =.75;
global.gamePaused = false;

global.iCamera = instance_create_layer(0,0,layer,oCamera);

// success flags
global.canpass1a = false
global.canpass1b = false;

global.canpass2a = false;

surface_resize(application_surface, RESOLUTION_W, RESOLUTION_H);




