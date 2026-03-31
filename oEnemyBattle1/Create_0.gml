xTo = xstart;
yTo = ystart;
xSpeed = 0;
ySpeed = 0;
spd = 2;
shouldStartMoving = false;
dir = 0;

hp = 1;
hpMax = 1;
name = "enemy";

sprnor = sUnstop;
sprmove = sEnemy;
sprattack = sUnstop;
sprhurt = sUnstop;
sprdie = sUnstop;

hurt = false;
die = false;

timerMax = 30;
timer = 0;
timerMove = 0;
timerAttack = 0;

hasMoved = false;
hasAttacked = false;

dist = 0;

orbit_target=oPlayerBattle;
orbit_speed=5;
orbit_length=50;
orbit_place=0; 

drawFrz = false;