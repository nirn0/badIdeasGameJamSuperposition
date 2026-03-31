with(oPlayerPath){
    if(y < 500) other.available = true;
    else other.available = false;
}

timer--;

if(timer == 0 && canTrigger){
    canTrigger = false;
    oEncounterCarrier.num = encounter+200;
    if(!instance_exists(oFade)){
        var fader = instance_create_depth(x,y,-999,oFade);
        fader.targetRoom = rmBattle;
    }
}