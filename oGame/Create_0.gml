randomize();

global.gamePaused = false;
global.xtextSpeed = 0.5;
global.tutorial = 0;
global.tutorialBase = false;
global.playerDead = false;

global.iCamera = instance_create_layer(0,0,"Instances",oCamera);

global.paradoxesUnlocked = [true, false, false, false, false];
global.paradoxSelected = 0;
global.paradoxEquipped = 1;
global.paradoxTimer = 0;

global.dodgeAll = false;

global.hpMax = 10;
global.hp = global.hpMax;

global.currentExpedition = 0;
global.finaleUnlocked = false;

global.weapon1 = 0;
global.weapon2 = 0;
global.currentWeapon = 0;
global.item1 = 0;
global.item2 = 0;
global.item3 = 0;
global.item4 = 0;
global.item5 = 0;
global.item6 = 0;
global.charm1 = 0;
global.charm2 = 0;
global.charm3 = 0;

global.pendingLoot = 0;

global.itemUsed = 0;

global.poisonChance = 0;
global.freezeChance = 0;

room_goto(rmTitle);