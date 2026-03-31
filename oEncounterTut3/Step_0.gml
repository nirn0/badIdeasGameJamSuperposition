timer--;

with(oPlayerPath){
    if(floor(point_distance(x,y,other.x,other.y)) < 130 && y > other.y) other.available = true;
    else other.available = false;
}

if(timer == 0 && canTrigger){
    canTrigger = false;
    oEncounterCarrier.num = 103;
    oEncounterCarrier.level = 3;
    if(!instance_exists(oFade)){
        var fader = instance_create_depth(x,y,-999,oFade);
        fader.targetRoom = rmBattle;
        global.tutorial = 24;
    }
}