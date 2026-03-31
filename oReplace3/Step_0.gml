if(oReplaceChoice.type == 2){
    sprite_index = sCharmOptions;
    image_index = global.charm3-1;
}
if(oReplaceChoice.type == 3){
    sprite_index = sItemOptions;
    image_index = global.item3-1;
}

timer--;
if(timer == 0){
    if(!instance_exists(oFade)){ 
        var fader = instance_create_depth(x,y,-999,oFade);
        fader.targetRoom = rmPath;
    }
}