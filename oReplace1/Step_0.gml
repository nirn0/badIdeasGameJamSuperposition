if(oReplaceChoice.type == 1){
    sprite_index = sWeaponOptions;
    image_index = global.weapon1-1;
}
if(oReplaceChoice.type == 2){
    sprite_index = sCharmOptions;
    image_index = global.charm1-1;
}
if(oReplaceChoice.type == 3){
    sprite_index = sItemOptions;
    image_index = global.item1-1;
}

timer--;
if(timer == 0){
    if(!instance_exists(oFade)){ 
        var fader = instance_create_depth(x,y,-999,oFade);
        fader.targetRoom = rmPath;
    }
}