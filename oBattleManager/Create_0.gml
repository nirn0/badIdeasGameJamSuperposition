phase = 0;
timerMax = 40;
timer = 0;

playerHasMoved = false;
playerHasAttacked = false;
playerHasUsedItem = false;
playerHasParadoxed = false;

ehp1 = 0;
ename1 = "enemy";
esprnor1 = sUnstop;
esprmove1 = sEnemy;
esprattack1 = sEnemy;
esprhurt1 = sEnemy;
esprdie1 = sEnemy;
eX1 = 0;
eY1 = 0;

ehp2 = 0;
ename2 = "enemy";
esprnor2 = sEnemy;
esprmove2 = sEnemy;
esprattack2 = sEnemy;
esprhurt2 = sEnemy;
esprdie2 = sEnemy;
eX2 = 0;
eY2 = 0;

ehp3 = 0;
ename3 = "enemy";
esprnor3 = sEnemy;
esprmove3 = sEnemy;
esprattack3 = sEnemy;
esprhurt3 = sEnemy;
esprdie3 = sEnemy;
eX3 = 0;
eY3 = 0;

epoi1 = false;
epoi2 = false;
epoi3 = false;
efre1 = false;
efre2 = false;
efre3 = false;

instance_create_layer(x,y,"Instances",oEnemyBattle1);
instance_create_layer(x,y,"Instances",oEnemyBattle2);
instance_create_layer(x,y,"Instances",oEnemyBattle3);

hasSetUp = false;

enemyToHurt = 0;

drawAlpha = 0;

hasMadeLootMngr = false;

if(global.tutorial != 0) phase = 9;

shouldCountParadoxDown = false;

inflictPoison = true;

debugTimer = -1;