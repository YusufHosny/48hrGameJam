hpPlayer = 50;

hpBoss = 50;

playerAttacks = ["PORCA MADONNA", "GIOVANNI SPECIALITY", "PORCO DIO", "fuck outta here"];

bossAttacks = ["YO ARE SO MEAN", "POCCO POCCO", "MEOW", "YOO AR DISGUSTINGG"];

turnPlayer = false;
wait = false;

selectedAttack = 0;

pObj = instance_create_depth(64, 190, -999, tb_Player);
pObj.image_angle = -10;
pObj.image_xscale = 4;
pObj.image_yscale = 4;

bObj = instance_create_depth(190, 0, -999, tb_Boss);
bObj.image_angle = -5;
bObj.image_xscale = 2;
bObj.image_yscale = 2;


tBlinkP = 0;
tBlinkB = 0;