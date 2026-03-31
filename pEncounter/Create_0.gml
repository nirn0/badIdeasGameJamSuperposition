encounter = floor(random_range(1,6.99));

timerMax = 100;
timer = -1;

available = false;
canTrigger = true;

if(encounter == 5) sprite_index = sShopEnc;
else if(encounter == 6) sprite_index = sHealEnc; 
else sprite_index = sBattleEnc;