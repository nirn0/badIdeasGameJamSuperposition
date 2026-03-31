if(oReplaceChoice.type == 3){
    sprite_index = sItemOptions;
    image_index = global.item4-1;
}

timer--;
if(timer == 0){
    if(!instance_exists(oFade)){ 
        var fader = instance_create_depth(x,y,-999,oFade);
        fader.targetRoom = rmPath;
    }
}