if(instance_exists(oText) or instance_exists(oTextQueued)) canMove = false;
else if(!global.playerDead) canMove = true;

timer--;
if(timer < 0){
    xTo = 630;
    yTo = 230;
    script_execute(state);
}

depth = -bbox_bottom;
if(x == xTo && y == yTo) sprite_index = spriteIdle;
else sprite_index = spriteRun;
if(xTo != x){
    if(xTo < x) image_xscale = -1;
    else image_xscale = 1;
}