sprite_index = sItemOptions;
if(global.tutorial == 0) image_index = oLootManager.opt3-1;
else image_index = 0;

selected = false;
if(global.tutorial == 0) num = oLootManager.opt3;
else num = 1;
timer = -1;
set = false;

image_xscale = 0.9;
image_yscale = 0.9;
depth = -800