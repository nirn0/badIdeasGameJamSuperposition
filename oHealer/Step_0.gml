if(!instance_exists(oText) && !created){
    instance_create_layer(oPlayerBattle.x,oPlayerBattle.y,"Instances",oHealEffect);
    created = true;
}
timer--
if(timer == 0 && !instance_exists(oFade)){
    var fader = instance_create_depth(x,y,-999,oFade);
    fader.targetRoom = rmPath;
}