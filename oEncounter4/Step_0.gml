timer--;

with(oPlayerPath){
    if(floor(point_distance(x,y,other.x,other.y)) < 160 && y > other.y) other.available = true;
    else other.available = false;
}

if(timer == 0 && canTrigger){
    canTrigger = false;
    if(encounter == 5) oEncounterCarrier.num = 50;
    else if(encounter == 6) oEncounterCarrier.num = 51;
    else oEncounterCarrier.num = encounter+4;
    
    oEncounterCarrier.level = 4;
    if(!instance_exists(oFade)){
        var fader = instance_create_depth(x,y,-999,oFade);
        fader.targetRoom = rmBattle;
    }
}