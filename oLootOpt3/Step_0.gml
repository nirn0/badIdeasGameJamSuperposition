if(selected){
    global.pendingLoot = num;
    timer--;
    if(x != 240) move_towards_point(240,y,2);
    else speed = 0;
    
    if(global.tutorial == 0){
        oLootOpt1.image_xscale = max(oLootOpt1.image_xscale-0.05,0);
        oLootOpt1.image_yscale = max(oLootOpt1.image_yscale-0.05,0);
        oLootOpt2.image_xscale = max(oLootOpt2.image_xscale-0.05,0);
        oLootOpt2.image_yscale = max(oLootOpt2.image_yscale-0.05,0);
    }
    
    if(!set){
        if(global.tutorial == 0){
            if(global.item1 == 0) global.item1 = num;
            else if(global.item2 == 0) global.item2 = num;
            else if(global.item3 == 0) global.item3 = num;
            else if(global.item4 == 0) global.item4 = num;
            else if(global.item5 == 0) global.item5 = num;
            else if(global.item6 == 0) global.item6 = num;
            else instance_create_layer(x,y,"Instances",oReplaceChoice);
        }
        else global.item1 = 1;
        set = true;
        timer = 120;
    }
    
    if(!instance_exists(oReplaceChoice) && timer == 0){
        instance_destroy(oLootOpt3);
        if(!instance_exists(oFade) && global.tutorial == 0){
            var fader = instance_create_depth(x,y,-999,oFade);
            fader.targetRoom = rmPath;
        }
        else global.tutorial = 21;
    }
    else if(instance_exists(oReplaceChoice) && timer == 0){
        oReplaceChoice.type = 3;
        instance_destroy(oLootOpt1);
        instance_destroy(oLootOpt2);
        instance_destroy(oLootOpt3);
        instance_destroy(oLootManager);
    }
}