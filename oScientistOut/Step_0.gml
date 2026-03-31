timer--;
if(!surprised){
    if(!instance_exists(oText) && timer < -5) timer = 10;
    if(timer == -5){
        sprite_index = sScienSurprise;
        instance_destroy(oText);
        NewTextBox("WOAH WHAT THE F-",sScientistFace);
        surprised = true;
        timer = 30;
    }
}
if(surprised && timer == -5){
    if(!instance_exists(oFade)){
        var fader = instance_create_depth(x,y,-999,oFade);
        fader.targetRoom = rmEnd;
    }
}