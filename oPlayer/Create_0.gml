state = PlayerStateFree;
hitByAttack = -1;

image_speed = 1;
canMove = true;
xSpeed = 0;
ySpeed = 0;
xTo = 150;
yTo = 150;
dir = 0;
speedWalk = 1.6;
speedRoll = 2.6;

distanceRoll = 60;
distanceBonk = 40;
distanceBonkHeight = 12;
distanceHook = 90;
z = 0;

invulnerable = 0;
flash = 0;
//flashShader = shWhiteFlash;

animationEndScript = -1;

spriteRun = sPlayer;
spriteIdle = sPlayer;

spriteIdle = sPlayer;
spriteRun = sPlayer;
spriteAttack = sPlayer;
localFrame = 0;

keyLeft = false;
keyRight = false;
keyUp = false;
keyDown = false;
keyActivate = false;
keyAttack = false;
keyShockwave = false;
keyAim = false;
keyShoot = false;
keyDrink = false;

inputDirection = point_direction(0, 0, keyRight-keyLeft, keyDown-keyUp);
inputMagnitude = (keyRight-keyLeft != 0) or (keyDown-keyUp != 0);