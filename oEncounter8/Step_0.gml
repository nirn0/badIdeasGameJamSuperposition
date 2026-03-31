timer--;

with(oPlayerPath){
    if(floor(point_distance(x,y,other.x,other.y)) < 140 && y > other.y) other.available = true;
    else other.available = false;
}

if(timer == 0 && canTrigger){
    canTrigger = false;
    switch (encounter){
        case 1:
            oEncounterCarrier.num = encounter; break;
        case 2:
            oEncounterCarrier.num = 50; break;
        case 3:
            oEncounterCarrier.num = 51; break;
    }
    oEncounterCarrier.level = 8;
    if(!instance_exists(oFade)){
        var fader = instance_create_depth(x,y,-999,oFade);
        fader.targetRoom = rmBattle;
    }
}