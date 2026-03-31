state = PlayerStateFree;

image_speed = 1;
canMove = true;

dir = 0;
speedWalk = 2;
xTo = 130;
yTo = 147;
x = xTo;
y = yTo;

flash = 0;
//flashShader = shWhiteFlash;

animationEndScript = -1;

spriteRun = sPlayerRun;
spriteIdle = sPlayerIdle;
spriteAttack = sPlayerAttack;
spriteVictory = sPlayerVictory;
spriteItem = sPlayerUseItem;
spriteHurt = sPlayerHurt;
spriteDie = sPlayerDie;
sprite_index = spriteIdle;

moveRange = 1;
attackRange = 1;
moveBonus = 0;
attackBonus = 0;
range = 1;

damage = 1;

action = 0;
target = noone;

victDance = false;

item1 = false;
item2 = false;
item3 = false;
item4 = false;
item5 = false;
item6 = false;

statusMenu = false;

facingLeft = false;
shakeAmountMax = 10;
shakeAmount = 0;

timer = 0;
drawAlpha = 0;

paradoxing = false;

switch (global.charm1) {
    case 1:
        moveBonus += 1; break;
    case 7:
        moveBonus += 2; break;
    case 2:
        attackBonus += 1; break;
    case 8:
        attackBonus += 2; break;
}
switch (global.charm2) {
    case 1:
        moveBonus += 1; break;
    case 7:
        moveBonus += 2; break;
    case 2:
        attackBonus += 1; break;
    case 8:
        attackBonus += 2; break;
}
switch (global.charm3) {
    case 1:
        moveBonus += 1; break;
    case 7:
        moveBonus += 2; break;
    case 2:
        attackBonus += 1; break;
    case 8:
        attackBonus += 2; break;
}

if(global.tutorial != 0) global.paradoxEquipped = 0;
else if(global.paradoxEquipped == 0) global.paradoxEquipped = 1;