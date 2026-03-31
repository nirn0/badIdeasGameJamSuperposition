if(point_distance(parent.x,parent.y,parent.xTo,parent.yTo) < 4){
    parent.speed = 0;
    parent.x = parent.xTo;
    parent.y = parent.yTo;
    global.hp -= 1;
    oPlayerBattle.xstart = oPlayerBattle.x;
    oPlayerBattle.shakeAmount = oPlayerBattle.shakeAmountMax;
    oPlayerBattle.drawAlpha = 1;
    instance_destroy();
}