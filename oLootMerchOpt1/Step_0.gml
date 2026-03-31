if(selected){
    global.pendingLoot = num;
    timer--;
    if(x != 240) move_towards_point(240,y,2);
    else speed = 0;
    
    with(oLootMerchOpt1){
        if(!selected){
            image_xscale = max(image_xscale-0.05,0);
            image_yscale = max(image_yscale-0.05,0);
            if(image_xscale == 0) instance_destroy();
            selectable = false;
        }
    }
    
    if(!set){
        if(global.weapon1 == 0) global.weapon1 = num;
        else if(global.weapon2 == 0) global.weapon2 = num;
        else instance_create_layer(x,y,"Instances",oReplaceChoice);
        set = true;
        timer = 120;
    }
    
    if(!instance_exists(oReplaceChoice) && timer == 0){
        instance_destroy();
        if(room == rmBattle && !instance_exists(oFade)){
            var fader = instance_create_depth(x,y,-999,oFade);
            fader.targetRoom = rmPath;
        }
    }
    else if(instance_exists(oReplaceChoice) && timer == 0){
        oReplaceChoice.type = 1;
        instance_destroy(oLootMerchOpt1);
        instance_destroy(oLootMerchOpt1);
        instance_destroy(oLootMerchOpt1);
    }
}