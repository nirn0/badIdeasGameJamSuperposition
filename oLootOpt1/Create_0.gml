sprite_index = sWeaponOptions;
if(global.tutorial == 0) image_index = oLootManager.opt1-1;
else image_index = 3;

selected = false;
if(global.tutorial == 0) num = oLootManager.opt1;
else num = 4;
timer = -1;
set = false;

image_xscale = 0.9;
image_yscale = 0.9;
depth = -800