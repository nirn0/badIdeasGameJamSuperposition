if(selected){
    global.pendingLoot = num;
    timer--;
    if(x != 240) move_towards_point(240,y,2);
    else speed = 0;
    
    with(oLootMerchOpt3){
        if(!selected){
            image_xscale = max(image_xscale-0.05,0);
            image_yscale = max(image_yscale-0.05,0);
            if(image_xscale == 0) instance_destroy();
            selectable = false;
        }
    }
    
    if(!set){
        if(global.item1 == 0) global.item1 = num;
        else if(global.item2 == 0) global.item2 = num;
        else if(global.item3 == 0) global.item3 = num;
        else if(global.item4 == 0) global.item4 = num;
        else if(global.item5 == 0) global.item5 = num;
        else if(global.item6 == 0) global.item6 = num;
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
        oReplaceChoice.type = 3;
        instance_destroy(oLootMerchOpt3);
        instance_destroy(oLootMerchOpt3);
        instance_destroy(oLootMerchOpt3);
    }
}