if(canCol){
    enemySpeed = 0;
    oPlayer.canMove = false;
    xToRem = oPlayer.x;
    yToRem = oPlayer.y;
    canCol = false;
    //persistent = true;
    if(!instance_exists(oFade)){
        var fader = instance_create_depth(x,y,-999,oFade);
        fader.targetRoom = rmBattle;
    }
}