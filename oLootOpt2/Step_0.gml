if(selected){
    global.pendingLoot = num;
    timer--;
    if(x != 240) move_towards_point(240,y,2);
    else speed = 0;
    
    if(global.tutorial == 0){
        oLootOpt1.image_xscale = max(oLootOpt1.image_xscale-0.05,0);
        oLootOpt1.image_yscale = max(oLootOpt1.image_yscale-0.05,0);
        oLootOpt3.image_xscale = max(oLootOpt3.image_xscale-0.05,0);
        oLootOpt3.image_yscale = max(oLootOpt3.image_yscale-0.05,0);
    }
    
    if(!set){
        if(global.tutorial == 0){
            if(global.charm1 == 0) global.charm1 = num;
            else if(global.charm2 == 0) global.charm2 = num;
            else if(global.charm3 == 0) global.charm3 = num;
            else instance_create_layer(x,y,"Instances",oReplaceChoice);
        }
        else global.charm1 = 2;
        set = true;
        timer = 120;
    }
    
    if(!instance_exists(oReplaceChoice) && timer == 0){
        instance_destroy(oLootOpt2);
        if(!instance_exists(oFade) && global.tutorial == 0){
            var fader = instance_create_depth(x,y,-999,oFade);
            fader.targetRoom = rmPath;
        }
        else global.tutorial = 13;
    }
    else if(instance_exists(oReplaceChoice) && timer == 0){
        oReplaceChoice.type = 2;
        instance_destroy(oLootOpt1);
        instance_destroy(oLootOpt2);
        instance_destroy(oLootOpt3);
        instance_destroy(oLootManager);
    }
}