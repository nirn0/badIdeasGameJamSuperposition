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

sprnor = sEnemy;
sprmove = sEnemy;
sprattack = sEnemyAttack;
sprhurt = sPlayer;
sprdie = sEnemy;

hurt = false;
die = false;

timerMax = 30;
timer = 0;
timerMove = 0;
timerAttack = 0;

hasMoved = false;
hasAttacked = false;

drawFrz = false;