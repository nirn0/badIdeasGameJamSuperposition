if(instance_exists(oText) or instance_exists(oTextQueued)) canMove = false;
else if(!global.playerDead) canMove = true;

if(canMove){
    script_execute(state);
}

depth = -bbox_bottom;
if(x == xTo && y == yTo && canMove) sprite_index = spriteIdle;
else if(canMove) sprite_index = spriteRun;
if(xTo != x){
    if(xTo < x) image_xscale = -1;
    else image_xscale = 1;
}

if(global.playerDead && room == rmBase && sprite_index != sPlayerWake){
    sprite_index = sPlayerWake;
    canMove = false;
}
if(sprite_index == sPlayerWake && image_index > image_number-1){
    sprite_index = spriteIdle;
    global.playerDead = false;
}