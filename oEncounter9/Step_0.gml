with(oPlayerPath){
    if(floor(point_distance(x,y,other.x,other.y)) < 100 && y > other.y) other.available = true;
    else other.available = false;
}

timer--;

if(timer == 0 && canTrigger){
    canTrigger = false;
    switch (encounter){
        case 1:
            oEncounterCarrier.num = encounter; break;
        case 2:
            oEncounterCarrier.num = 50;
            sprite_index = sPlayer; break;
        case 3:
            oEncounterCarrier.num = 51; break;
    }
    oEncounterCarrier.level = 9;
    if(!instance_exists(oFade)){
        var fader = instance_create_depth(x,y,-999,oFade);
        fader.targetRoom = rmBattle;
    }
}