sprite_index = sCharmOptions;
if(global.tutorial == 0) image_index = oLootManager.opt2-1;
else image_index = 1;

selected = false;
if(global.tutorial == 0) num = oLootManager.opt2;
else num = 1;
timer = -1;
set = false;

image_xscale = 0.9;
image_yscale = 0.9;
depth = -800